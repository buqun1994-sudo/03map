.class Lcom/amap/location/sdk/h/a/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/h/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/h/a/e;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/h/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    const-string v0, "#"

    .line 3
    iget-object v1, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 5
    iget-boolean v1, v1, Lcom/amap/location/sdk/h/a/a/a;->a:Z

    .line 7
    if-nez v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 16
    invoke-static {v2}, Lcom/amap/location/sdk/h/a/e;->a(Lcom/amap/location/sdk/h/a/e;)Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v1, v2}, Lcom/amap/location/support/nl/INetworkLocator;->removeUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;)V

    .line 23
    iget-object v1, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 25
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 32
    move-result-wide v2

    .line 33
    invoke-static {v1, v2, v3}, Lcom/amap/location/sdk/h/a/e;->b(Lcom/amap/location/sdk/h/a/e;J)J

    .line 36
    iget-object v1, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 38
    invoke-static {v1}, Lcom/amap/location/sdk/h/a/e;->b(Lcom/amap/location/sdk/h/a/e;)Z

    .line 41
    move-result v1

    .line 42
    const/16 v2, 0x3e8

    .line 44
    const/4 v3, 0x0

    .line 45
    if-eqz v1, :cond_8

    .line 47
    iget-object v1, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 49
    invoke-static {v1}, Lcom/amap/location/sdk/h/a/e;->c(Lcom/amap/location/sdk/h/a/e;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_5

    .line 55
    iget-object v1, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 57
    invoke-static {v1}, Lcom/amap/location/sdk/h/a/e;->c(Lcom/amap/location/sdk/h/a/e;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 64
    move-result-wide v4

    .line 65
    iget-object v1, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 67
    invoke-static {v1}, Lcom/amap/location/sdk/h/a/e;->c(Lcom/amap/location/sdk/h/a/e;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 74
    move-result-wide v6

    .line 75
    iget-object v1, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 77
    invoke-static {v1}, Lcom/amap/location/sdk/h/a/e;->d(Lcom/amap/location/sdk/h/a/e;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 84
    move-result-wide v8

    .line 85
    iget-object v1, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 87
    invoke-static {v1}, Lcom/amap/location/sdk/h/a/e;->d(Lcom/amap/location/sdk/h/a/e;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 94
    move-result-wide v10

    .line 95
    invoke-static/range {v4 .. v11}, Lcom/amap/location/support/util/GeoUtils;->distance(DDDD)D

    .line 98
    move-result-wide v4

    .line 99
    double-to-int v1, v4

    .line 100
    const v4, 0xc350

    .line 103
    if-lt v1, v4, :cond_1

    .line 105
    const/16 v4, 0x50

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const/16 v4, 0x2710

    .line 110
    if-lt v1, v4, :cond_2

    .line 112
    const/16 v4, 0x46

    .line 114
    goto :goto_0

    .line 115
    :cond_2
    const/16 v4, 0x1388

    .line 117
    if-lt v1, v4, :cond_3

    .line 119
    const/16 v4, 0x3c

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    if-lt v1, v2, :cond_4

    .line 124
    const/16 v4, 0x32

    .line 126
    goto :goto_0

    .line 127
    :cond_4
    const/16 v4, 0x1f4

    .line 129
    if-lt v1, v4, :cond_6

    .line 131
    const/16 v4, 0x14

    .line 133
    goto :goto_0

    .line 134
    :cond_5
    const/4 v1, 0x0

    .line 135
    :cond_6
    const/4 v4, 0x0

    .line 136
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string v6, ","

    .line 146
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v7, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 151
    invoke-static {v7}, Lcom/amap/location/sdk/h/a/e;->d(Lcom/amap/location/sdk/h/a/e;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 154
    move-result-object v7

    .line 155
    invoke-virtual {v7}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 158
    move-result-wide v7

    .line 159
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v7, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 167
    invoke-static {v7}, Lcom/amap/location/sdk/h/a/e;->d(Lcom/amap/location/sdk/h/a/e;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 170
    move-result-object v7

    .line 171
    invoke-virtual {v7}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 174
    move-result-wide v7

    .line 175
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v6, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 183
    invoke-static {v6}, Lcom/amap/location/sdk/h/a/e;->d(Lcom/amap/location/sdk/h/a/e;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v6}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 190
    move-result v6

    .line 191
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v5

    .line 198
    iget-object v6, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 200
    iget-object v7, v6, Lcom/amap/location/sdk/h/a/a/a;->c:Lcom/amap/location/sdk/h/a/b/a;

    .line 202
    if-lez v4, :cond_7

    .line 204
    iget v6, v6, Lcom/amap/location/sdk/h/a/a/a;->b:I

    .line 206
    goto :goto_1

    .line 207
    :cond_7
    const/4 v6, 0x0

    .line 208
    :goto_1
    invoke-virtual {v7, v6, v4, v3, v5}, Lcom/amap/location/sdk/h/a/b/a;->a(IIILjava/lang/String;)V

    .line 211
    move v3, v1

    .line 212
    goto :goto_2

    .line 213
    :cond_8
    iget-object v1, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 215
    iget-object v1, v1, Lcom/amap/location/sdk/h/a/a/a;->c:Lcom/amap/location/sdk/h/a/b/a;

    .line 217
    const-string v4, "network inValid"

    .line 219
    invoke-virtual {v1, v3, v3, v3, v4}, Lcom/amap/location/sdk/h/a/b/a;->a(IIILjava/lang/String;)V

    .line 222
    :goto_2
    iget-object v1, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 224
    iget-object v4, v1, Lcom/amap/location/sdk/h/a/a/b;->f:Lcom/amap/location/a/b/a;

    .line 226
    iget-object v1, v1, Lcom/amap/location/sdk/h/a/a/a;->c:Lcom/amap/location/sdk/h/a/b/a;

    .line 228
    iget v5, v1, Lcom/amap/location/sdk/h/a/b/a;->a:I

    .line 230
    iget v6, v1, Lcom/amap/location/sdk/h/a/b/a;->b:I

    .line 232
    iget v7, v1, Lcom/amap/location/sdk/h/a/b/a;->c:I

    .line 234
    iget-object v1, v1, Lcom/amap/location/sdk/h/a/b/a;->d:Ljava/lang/String;

    .line 236
    invoke-interface {v4, v5, v6, v7, v1}, Lcom/amap/location/a/b/a;->a(IIILjava/lang/String;)V

    .line 239
    sget-boolean v1, Lcom/amap/location/sdk/h/a;->b:Z

    .line 241
    if-eqz v1, :cond_c

    .line 243
    if-gt v3, v2, :cond_9

    .line 245
    return-void

    .line 246
    :cond_9
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 248
    invoke-virtual {v1}, Lcom/amap/location/sdk/h/a/e;->e()Lcom/amap/location/support/bean/location/AmapLocation;

    .line 251
    move-result-object v1

    .line 252
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getLocaitionManager()Landroid/location/LocationManager;

    .line 255
    move-result-object v4

    .line 256
    const-string v5, "network"

    .line 258
    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 261
    move-result-object v4

    .line 262
    if-eqz v4, :cond_c

    .line 264
    iget-object v5, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 266
    invoke-static {v5}, Lcom/amap/location/sdk/h/a/e;->c(Lcom/amap/location/sdk/h/a/e;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 269
    move-result-object v5

    .line 270
    if-eqz v5, :cond_c

    .line 272
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    .line 275
    move-result-wide v5

    .line 276
    iget-object v7, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 278
    invoke-static {v7}, Lcom/amap/location/sdk/h/a/e;->c(Lcom/amap/location/sdk/h/a/e;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 281
    move-result-object v7

    .line 282
    invoke-virtual {v7}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 285
    move-result-wide v7

    .line 286
    cmpl-double v9, v5, v7

    .line 288
    if-nez v9, :cond_c

    .line 290
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    .line 293
    move-result-wide v4

    .line 294
    iget-object v6, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 296
    invoke-static {v6}, Lcom/amap/location/sdk/h/a/e;->c(Lcom/amap/location/sdk/h/a/e;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 299
    move-result-object v6

    .line 300
    invoke-virtual {v6}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 303
    move-result-wide v6

    .line 304
    cmpl-double v8, v4, v6

    .line 306
    if-nez v8, :cond_c

    .line 308
    if-nez v1, :cond_a

    .line 310
    return-void

    .line 311
    :cond_a
    iget-object v4, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 313
    invoke-static {v4}, Lcom/amap/location/sdk/h/a/e;->c(Lcom/amap/location/sdk/h/a/e;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 316
    move-result-object v4

    .line 317
    invoke-virtual {v4}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 320
    move-result-wide v5

    .line 321
    iget-object v4, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 323
    invoke-static {v4}, Lcom/amap/location/sdk/h/a/e;->c(Lcom/amap/location/sdk/h/a/e;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 326
    move-result-object v4

    .line 327
    invoke-virtual {v4}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 330
    move-result-wide v7

    .line 331
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 334
    move-result-wide v9

    .line 335
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 338
    move-result-wide v11

    .line 339
    invoke-static/range {v5 .. v12}, Lcom/amap/location/support/util/GeoUtils;->distance(DDDD)D

    .line 342
    move-result-wide v4

    .line 343
    double-to-int v4, v4

    .line 344
    if-gt v4, v2, :cond_b

    .line 346
    return-void

    .line 347
    :cond_b
    iget-object v2, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 349
    invoke-static {v2}, Lcom/amap/location/sdk/h/a/e;->d(Lcom/amap/location/sdk/h/a/e;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 352
    move-result-object v2

    .line 353
    invoke-virtual {v2}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 356
    move-result-wide v5

    .line 357
    iget-object v2, p0, Lcom/amap/location/sdk/h/a/e$2;->a:Lcom/amap/location/sdk/h/a/e;

    .line 359
    invoke-static {v2}, Lcom/amap/location/sdk/h/a/e;->d(Lcom/amap/location/sdk/h/a/e;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v2}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 366
    move-result-wide v7

    .line 367
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 370
    move-result-wide v9

    .line 371
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 374
    move-result-wide v11

    .line 375
    invoke-static/range {v5 .. v12}, Lcom/amap/location/support/util/GeoUtils;->distance(DDDD)D

    .line 378
    move-result-wide v1

    .line 379
    double-to-int v1, v1

    .line 380
    const/16 v2, 0x7d0

    .line 382
    if-gt v1, v2, :cond_c

    .line 384
    if-lt v3, v2, :cond_c

    .line 386
    const-string v2, "Pcd"

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    .line 390
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    const-string v6, "#pcd#32#"

    .line 395
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    move-result-object v0

    .line 417
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    goto :goto_3

    .line 421
    :catch_0
    move-exception v0

    .line 422
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 425
    :cond_c
    :goto_3
    return-void
.end method
