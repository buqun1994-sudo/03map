.class Lcom/amap/location/fusion/util/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/util/c;

.field private b:B

.field private c:J


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/util/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/util/c$1;->a:Lcom/amap/location/fusion/util/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v0, "res"

    .line 5
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 12
    move-result-wide v2

    .line 13
    iget-object v4, v1, Lcom/amap/location/fusion/util/c$1;->a:Lcom/amap/location/fusion/util/c;

    .line 15
    invoke-static {v4}, Lcom/amap/location/fusion/util/c;->a(Lcom/amap/location/fusion/util/c;)I

    .line 18
    move-result v4

    .line 19
    new-instance v5, Ljava/lang/StringBuffer;

    .line 21
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    const-string v6, "v3"

    .line 26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    const-string v6, "#"

    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    iget-object v7, v1, Lcom/amap/location/fusion/util/c$1;->a:Lcom/amap/location/fusion/util/c;

    .line 42
    invoke-static {v7}, Lcom/amap/location/fusion/util/c;->c(Lcom/amap/location/fusion/util/c;)J

    .line 45
    move-result-wide v7

    .line 46
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 49
    const-string v7, "_"

    .line 51
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    iget-object v7, v1, Lcom/amap/location/fusion/util/c$1;->a:Lcom/amap/location/fusion/util/c;

    .line 56
    invoke-static {v7}, Lcom/amap/location/fusion/util/c;->b(Lcom/amap/location/fusion/util/c;)I

    .line 59
    move-result v7

    .line 60
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    if-ltz v4, :cond_b

    .line 68
    iget-object v4, v1, Lcom/amap/location/fusion/util/c$1;->a:Lcom/amap/location/fusion/util/c;

    .line 70
    invoke-static {v4}, Lcom/amap/location/fusion/util/c;->d(Lcom/amap/location/fusion/util/c;)Lcom/amap/location/fusion/util/c$b;

    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4}, Lcom/amap/location/fusion/util/c$b;->a()[I

    .line 77
    move-result-object v4

    .line 78
    iget-object v7, v1, Lcom/amap/location/fusion/util/c$1;->a:Lcom/amap/location/fusion/util/c;

    .line 80
    invoke-static {v7, v4}, Lcom/amap/location/fusion/util/c;->a(Lcom/amap/location/fusion/util/c;[I)I

    .line 83
    move-result v4

    .line 84
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 87
    move-result-object v7

    .line 88
    invoke-interface {v7}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 91
    move-result-object v7

    .line 92
    invoke-interface {v7}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->getProcessImportance()I

    .line 95
    move-result v7

    .line 96
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 99
    const-string v7, ","

    .line 101
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    .line 107
    move-result v8

    .line 108
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onForeground()Z

    .line 117
    move-result v9

    .line 118
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 127
    move-result-object v9

    .line 128
    invoke-interface {v9}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 131
    move-result-object v9

    .line 132
    invoke-interface {v9}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isScreenOn()Z

    .line 135
    move-result v9

    .line 136
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 145
    move-result-object v9

    .line 146
    invoke-interface {v9}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 149
    move-result-object v9

    .line 150
    invoke-interface {v9}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isLocationOn()Z

    .line 153
    move-result v9

    .line 154
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-static {}, Lcom/amap/location/support/guard/LocationGuarder;->getInstance()Lcom/amap/location/support/guard/LocationGuarder;

    .line 163
    move-result-object v9

    .line 164
    invoke-virtual {v9}, Lcom/amap/location/support/guard/LocationGuarder;->getGuarderStatus()Lcom/amap/location/support/guard/LocationGuarderStatus;

    .line 167
    move-result-object v9

    .line 168
    if-eqz v9, :cond_0

    .line 170
    invoke-virtual {v9}, Lcom/amap/location/support/guard/LocationGuarderStatus;->toSimpleString()Ljava/lang/String;

    .line 173
    move-result-object v9

    .line 174
    goto :goto_0

    .line 175
    :cond_0
    const-string v9, "0"

    .line 177
    :goto_0
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 186
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIod()I

    .line 192
    move-result v9

    .line 193
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIodConfidence()I

    .line 202
    move-result v7

    .line 203
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    iget-object v7, v1, Lcom/amap/location/fusion/util/c$1;->a:Lcom/amap/location/fusion/util/c;

    .line 211
    invoke-static {v7}, Lcom/amap/location/fusion/util/c;->d(Lcom/amap/location/fusion/util/c;)Lcom/amap/location/fusion/util/c$b;

    .line 214
    move-result-object v7

    .line 215
    invoke-virtual {v7}, Lcom/amap/location/fusion/util/c$b;->a()[I

    .line 218
    move-result-object v7

    .line 219
    invoke-static {v7}, Lcom/amap/location/fusion/util/c;->a([I)Ljava/lang/String;

    .line 222
    move-result-object v7

    .line 223
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 232
    move-result-object v7

    .line 233
    const/4 v9, -0x1

    .line 234
    if-eqz v7, :cond_1

    .line 236
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 239
    move-result-object v7

    .line 240
    invoke-virtual {v7}, Lcom/amap/location/type/location/LocationMatch;->getRoadClass()B

    .line 243
    move-result v7

    .line 244
    goto :goto_1

    .line 245
    :cond_1
    const/4 v7, -0x1

    .line 246
    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getMainProcessLastActiveTime()J

    .line 255
    move-result-wide v10

    .line 256
    sub-long v10, v2, v10

    .line 258
    const-wide/16 v12, 0x3e8

    .line 260
    div-long/2addr v10, v12

    .line 261
    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    invoke-static {}, Lcom/amap/location/support/guard/LocationGuarder;->getInstance()Lcom/amap/location/support/guard/LocationGuarder;

    .line 270
    move-result-object v7

    .line 271
    invoke-virtual {v7}, Lcom/amap/location/support/guard/LocationGuarder;->isOpenSpace()Z

    .line 274
    move-result v7

    .line 275
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 278
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 284
    move-result-object v10

    .line 285
    invoke-interface {v10}, Lcom/amap/location/support/common/IPlatformStatus;->getBatteryPropertyCapacity()I

    .line 288
    move-result v10

    .line 289
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 292
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 298
    move-result-object v10

    .line 299
    if-eqz v10, :cond_2

    .line 301
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 304
    move-result-object v10

    .line 305
    invoke-virtual {v10}, Lcom/amap/location/type/location/LocationMatch;->getLinkType()B

    .line 308
    move-result v10

    .line 309
    goto :goto_2

    .line 310
    :cond_2
    const/4 v10, -0x1

    .line 311
    :goto_2
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 314
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 320
    move-result-object v11

    .line 321
    if-eqz v11, :cond_3

    .line 323
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 326
    move-result-object v9

    .line 327
    invoke-virtual {v9}, Lcom/amap/location/type/location/LocationMatch;->getFormWay()B

    .line 330
    move-result v9

    .line 331
    :cond_3
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 334
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    const-string v9, "-1"

    .line 339
    const/4 v11, 0x2

    .line 340
    const/4 v12, 0x0

    .line 341
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 344
    move-result-object v14

    .line 345
    if-eqz v14, :cond_4

    .line 347
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 350
    move-result-object v14

    .line 351
    invoke-virtual {v14}, Lcom/amap/location/type/location/LocationMatch;->getLinkType()B

    .line 354
    move-result v14

    .line 355
    if-ne v14, v11, :cond_4

    .line 357
    const/4 v14, 0x1

    .line 358
    goto :goto_3

    .line 359
    :cond_4
    const/4 v14, 0x0

    .line 360
    :goto_3
    new-instance v15, Lorg/json/JSONObject;

    .line 362
    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 365
    const-string v13, "matchTunnel"

    .line 367
    invoke-virtual {v15, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 370
    const-string v13, "networktrace"

    .line 372
    invoke-virtual {v15, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 375
    const-string v7, "satelliteinfo"

    .line 377
    invoke-virtual {v15, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 380
    const-string v4, "foreground"

    .line 382
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onForeground()Z

    .line 385
    move-result v7

    .line 386
    invoke-virtual {v15, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 389
    const-string v4, "locationOn"

    .line 391
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 394
    move-result-object v7

    .line 395
    invoke-interface {v7}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 398
    move-result-object v7

    .line 399
    invoke-interface {v7}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isLocationOn()Z

    .line 402
    move-result v7

    .line 403
    invoke-virtual {v15, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 406
    const-string v4, "permissionOn"

    .line 408
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 411
    move-result-object v7

    .line 412
    invoke-interface {v7}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 415
    move-result-object v7

    .line 416
    invoke-interface {v7}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->hasFineLocationPermission()Z

    .line 419
    move-result v7

    .line 420
    invoke-virtual {v15, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 423
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getManuFeedback()Lcom/amap/location/support/feedback/IManuFeedback;

    .line 426
    move-result-object v4

    .line 427
    invoke-interface {v4, v15}, Lcom/amap/location/support/feedback/IManuFeedback;->fetchGnssTimeoutReason(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 430
    move-result-object v4

    .line 431
    if-eqz v4, :cond_5

    .line 433
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 436
    move-result v7

    .line 437
    if-eqz v7, :cond_5

    .line 439
    const-string v7, "null"

    .line 441
    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 444
    move-result-object v0

    .line 445
    const-string v4, "&"

    .line 447
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 450
    move-result-object v9

    .line 451
    invoke-static {}, Lcom/amap/location/support/guard/LocationGuarder;->getInstance()Lcom/amap/location/support/guard/LocationGuarder;

    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {v0, v9}, Lcom/amap/location/support/guard/LocationGuarder;->onSetManuFeedback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    goto :goto_4

    .line 459
    :catch_0
    move-exception v0

    .line 460
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 463
    :cond_5
    :goto_4
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    if-eq v10, v11, :cond_a

    .line 471
    const/4 v0, 0x5

    .line 472
    if-eq v8, v0, :cond_6

    .line 474
    const/4 v0, 0x6

    .line 475
    if-eq v8, v0, :cond_6

    .line 477
    const/4 v0, 0x7

    .line 478
    if-eq v8, v0, :cond_6

    .line 480
    const/16 v0, 0xb

    .line 482
    if-ne v8, v0, :cond_a

    .line 484
    :cond_6
    :try_start_1
    iget-byte v0, v1, Lcom/amap/location/fusion/util/c$1;->b:B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 486
    const-string v4, "gnssloss"

    .line 488
    const-string v6, "engnssresetall"

    .line 490
    if-ne v0, v11, :cond_8

    .line 492
    :try_start_2
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 495
    move-result-object v0

    .line 496
    const-string v7, "engnssresetup"

    .line 498
    invoke-virtual {v0, v7, v12}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;I)I

    .line 501
    move-result v0

    .line 502
    const/4 v7, 0x1

    .line 503
    if-ne v0, v7, :cond_a

    .line 505
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 508
    move-result-object v0

    .line 509
    invoke-virtual {v0, v6, v12}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;I)I

    .line 512
    move-result v0

    .line 513
    if-ne v0, v7, :cond_7

    .line 515
    invoke-static {}, Lcom/amap/location/support/fusion/RemoteProcessHelper;->getStatusListener()Lcom/amap/location/support/fusion/IStatusListener;

    .line 518
    move-result-object v11

    .line 519
    const-string v12, "gnssreset_all"

    .line 521
    const-wide/16 v13, 0x0

    .line 523
    const-wide/16 v15, 0x0

    .line 525
    const/16 v17, 0x0

    .line 527
    invoke-interface/range {v11 .. v17}, Lcom/amap/location/support/fusion/IStatusListener;->onStatusChanged(Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 530
    goto :goto_5

    .line 531
    :cond_7
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 534
    move-result-object v0

    .line 535
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 538
    move-result-object v0

    .line 539
    invoke-interface {v0}, Lcom/amap/location/support/signal/gnss/IGnssManager;->resetGnssRequest()V

    .line 542
    :goto_5
    iput-wide v2, v1, Lcom/amap/location/fusion/util/c$1;->c:J

    .line 544
    const-string v0, "reset gps as come out from tunnel"

    .line 546
    invoke-static {v4, v0}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    goto :goto_7

    .line 550
    :cond_8
    iget-object v0, v1, Lcom/amap/location/fusion/util/c$1;->a:Lcom/amap/location/fusion/util/c;

    .line 552
    invoke-static {v0}, Lcom/amap/location/fusion/util/c;->e(Lcom/amap/location/fusion/util/c;)I

    .line 555
    move-result v0

    .line 556
    const/4 v7, 0x1

    .line 557
    if-le v0, v7, :cond_a

    .line 559
    iget-wide v7, v1, Lcom/amap/location/fusion/util/c$1;->c:J

    .line 561
    sub-long v7, v2, v7

    .line 563
    const-wide/32 v13, 0x493e0

    .line 566
    cmp-long v0, v7, v13

    .line 568
    if-lez v0, :cond_a

    .line 570
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 573
    move-result-object v0

    .line 574
    const-string v7, "engnssresetcn"

    .line 576
    invoke-virtual {v0, v7, v12}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;I)I

    .line 579
    move-result v0

    .line 580
    const/4 v7, 0x1

    .line 581
    if-ne v0, v7, :cond_a

    .line 583
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 586
    move-result-object v0

    .line 587
    invoke-virtual {v0, v6, v12}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;I)I

    .line 590
    move-result v0

    .line 591
    if-ne v0, v7, :cond_9

    .line 593
    invoke-static {}, Lcom/amap/location/support/fusion/RemoteProcessHelper;->getStatusListener()Lcom/amap/location/support/fusion/IStatusListener;

    .line 596
    move-result-object v11

    .line 597
    const-string v12, "gnssreset_all"

    .line 599
    const-wide/16 v13, 0x0

    .line 601
    const-wide/16 v15, 0x0

    .line 603
    const/16 v17, 0x0

    .line 605
    invoke-interface/range {v11 .. v17}, Lcom/amap/location/support/fusion/IStatusListener;->onStatusChanged(Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 608
    goto :goto_6

    .line 609
    :cond_9
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 612
    move-result-object v0

    .line 613
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 616
    move-result-object v0

    .line 617
    invoke-interface {v0}, Lcom/amap/location/support/signal/gnss/IGnssManager;->resetGnssRequest()V

    .line 620
    :goto_6
    iput-wide v2, v1, Lcom/amap/location/fusion/util/c$1;->c:J

    .line 622
    const-string v0, "reset gps as iod 2"

    .line 624
    invoke-static {v4, v0}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 627
    goto :goto_7

    .line 628
    :catch_1
    move-exception v0

    .line 629
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 632
    :cond_a
    :goto_7
    iput-byte v10, v1, Lcom/amap/location/fusion/util/c$1;->b:B

    .line 634
    :cond_b
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 637
    move-result-object v0

    .line 638
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 641
    move-result-object v0

    .line 642
    const v2, 0x1ae35

    .line 645
    invoke-static {v2, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 648
    iget-object v0, v1, Lcom/amap/location/fusion/util/c$1;->a:Lcom/amap/location/fusion/util/c;

    .line 650
    invoke-static {v0}, Lcom/amap/location/fusion/util/c;->f(Lcom/amap/location/fusion/util/c;)Lcom/amap/location/support/handler/AmapHandler;

    .line 653
    move-result-object v0

    .line 654
    if-eqz v0, :cond_c

    .line 656
    iget-object v0, v1, Lcom/amap/location/fusion/util/c$1;->a:Lcom/amap/location/fusion/util/c;

    .line 658
    invoke-static {v0}, Lcom/amap/location/fusion/util/c;->g(Lcom/amap/location/fusion/util/c;)Z

    .line 661
    move-result v0

    .line 662
    if-eqz v0, :cond_c

    .line 664
    iget-object v0, v1, Lcom/amap/location/fusion/util/c$1;->a:Lcom/amap/location/fusion/util/c;

    .line 666
    invoke-static {v0}, Lcom/amap/location/fusion/util/c;->f(Lcom/amap/location/fusion/util/c;)Lcom/amap/location/support/handler/AmapHandler;

    .line 669
    move-result-object v0

    .line 670
    iget-object v2, v1, Lcom/amap/location/fusion/util/c$1;->a:Lcom/amap/location/fusion/util/c;

    .line 672
    invoke-static {v2}, Lcom/amap/location/fusion/util/c;->h(Lcom/amap/location/fusion/util/c;)Ljava/lang/Runnable;

    .line 675
    move-result-object v2

    .line 676
    invoke-static {}, Lcom/amap/location/fusion/util/c;->c()I

    .line 679
    move-result v3

    .line 680
    int-to-long v3, v3

    .line 681
    invoke-interface {v0, v2, v3, v4}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 684
    :cond_c
    return-void
.end method
