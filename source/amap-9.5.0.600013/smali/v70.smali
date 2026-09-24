.class public Lv70;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile c:Lv70;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lrv;->H()Lrv;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lv70;->a:Landroid/content/Context;

    .line 14
    return-void
.end method

.method public static f()Lv70;
    .locals 2

    .line 1
    sget-object v0, Lv70;->c:Lv70;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lv70;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lv70;->c:Lv70;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lv70;

    .line 14
    invoke-direct {v1}, Lv70;-><init>()V

    .line 17
    sput-object v1, Lv70;->c:Lv70;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lv70;->c:Lv70;

    .line 26
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const/4 v3, 0x1

    .line 8
    aput-object p2, v1, v3

    .line 10
    const-string v4, "ProtocolDistributeManager"

    .line 12
    const-string v5, "distributeDispatch header:{?} jsonString:{?}"

    .line 14
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    if-eqz p1, :cond_a

    .line 19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 25
    goto/16 :goto_3

    .line 27
    :cond_0
    :try_start_0
    invoke-static {}, Lse;->c()Lse;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, p1, p2}, Lse;->handleProtocolRequest(Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;Ljava/lang/String;)V

    .line 34
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->protocolId:I

    .line 36
    const/4 v5, 0x4

    .line 37
    sparse-switch v1, :sswitch_data_0

    .line 40
    goto/16 :goto_3

    .line 42
    :sswitch_0
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 45
    move-result-object v1

    .line 46
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspRevealingResCharingStaInfoModel;

    .line 48
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspRevealingResCharingStaInfoModel;

    .line 54
    new-instance v5, Lcb0;

    .line 56
    invoke-direct {v5, v1}, Lcb0;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspRevealingResCharingStaInfoModel;)V

    .line 59
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 62
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 64
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 67
    move-result p2

    .line 68
    iput p2, v5, Lec;->c:I

    .line 70
    invoke-static {}, Ll30;->g()Ll30;

    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 77
    goto/16 :goto_3

    .line 79
    :sswitch_1
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 82
    move-result-object v1

    .line 83
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;

    .line 85
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;

    .line 91
    new-instance v5, Lwh0;

    .line 93
    invoke-direct {v5, v1}, Lwh0;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;)V

    .line 96
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 99
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 101
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 104
    move-result p2

    .line 105
    iput p2, v5, Lec;->c:I

    .line 107
    invoke-static {}, Ll30;->g()Ll30;

    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 114
    goto/16 :goto_3

    .line 116
    :sswitch_2
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 119
    move-result-object v1

    .line 120
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;

    .line 122
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;

    .line 128
    new-instance v5, Lq40;

    .line 130
    invoke-direct {v5, v1}, Lq40;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;)V

    .line 133
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 136
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 138
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 141
    move-result p2

    .line 142
    iput p2, v5, Lec;->c:I

    .line 144
    invoke-static {}, Ll30;->g()Ll30;

    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 151
    goto/16 :goto_3

    .line 153
    :sswitch_3
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 156
    move-result-object v1

    .line 157
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspArHudGuideLineOutputModel;

    .line 159
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspArHudGuideLineOutputModel;

    .line 165
    new-instance v5, Ln5;

    .line 167
    invoke-direct {v5, v1}, Ln5;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspArHudGuideLineOutputModel;)V

    .line 170
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 173
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 175
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 178
    move-result p2

    .line 179
    iput p2, v5, Lec;->c:I

    .line 181
    invoke-static {}, Ll30;->g()Ll30;

    .line 184
    move-result-object p2

    .line 185
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 188
    goto/16 :goto_3

    .line 190
    :sswitch_4
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 193
    move-result-object v1

    .line 194
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspArHudTBTInfoOutputModel;

    .line 196
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 199
    move-result-object v1

    .line 200
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspArHudTBTInfoOutputModel;

    .line 202
    new-instance v5, Lp5;

    .line 204
    invoke-direct {v5, v1}, Lp5;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspArHudTBTInfoOutputModel;)V

    .line 207
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 210
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 212
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 215
    move-result p2

    .line 216
    iput p2, v5, Lec;->c:I

    .line 218
    invoke-static {}, Ll30;->g()Ll30;

    .line 221
    move-result-object p2

    .line 222
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 225
    goto/16 :goto_3

    .line 227
    :sswitch_5
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 230
    move-result-object p2

    .line 231
    const-class v1, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;

    .line 233
    invoke-static {p2, v1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 236
    move-result-object p2

    .line 237
    check-cast p2, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;

    .line 239
    invoke-static {}, Lse;->c()Lse;

    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v1, p2}, Lse;->setNzpPassingPoi(Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;)Z

    .line 246
    goto/16 :goto_3

    .line 248
    :sswitch_6
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 251
    move-result-object v1

    .line 252
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesOutputModel;

    .line 254
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 257
    move-result-object v1

    .line 258
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesOutputModel;

    .line 260
    new-instance v5, Lj80;

    .line 262
    invoke-direct {v5, v1}, Lj80;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesOutputModel;)V

    .line 265
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 268
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 270
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 273
    move-result p2

    .line 274
    iput p2, v5, Lec;->c:I

    .line 276
    invoke-static {}, Ll30;->g()Ll30;

    .line 279
    move-result-object p2

    .line 280
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 283
    goto/16 :goto_3

    .line 285
    :sswitch_7
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 288
    move-result-object v1

    .line 289
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspHistoryOutputModel;

    .line 291
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 294
    move-result-object v1

    .line 295
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspHistoryOutputModel;

    .line 297
    new-instance v5, Lkp;

    .line 299
    invoke-direct {v5, v1}, Lkp;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspHistoryOutputModel;)V

    .line 302
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 305
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 307
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 310
    move-result p2

    .line 311
    iput p2, v5, Lec;->c:I

    .line 313
    invoke-static {}, Ll30;->g()Ll30;

    .line 316
    move-result-object p2

    .line 317
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 320
    goto/16 :goto_3

    .line 322
    :sswitch_8
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 325
    move-result-object v1

    .line 326
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspRouteInfoContrastModel;

    .line 328
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 331
    move-result-object v1

    .line 332
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspRouteInfoContrastModel;

    .line 334
    new-instance v5, Lfb0;

    .line 336
    invoke-direct {v5, v1}, Lfb0;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspRouteInfoContrastModel;)V

    .line 339
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 342
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 344
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 347
    move-result p2

    .line 348
    iput p2, v5, Lec;->c:I

    .line 350
    invoke-static {}, Ll30;->g()Ll30;

    .line 353
    move-result-object p2

    .line 354
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 357
    goto/16 :goto_3

    .line 359
    :sswitch_9
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 362
    move-result-object v1

    .line 363
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspGetPlateNumberModel;

    .line 365
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 368
    move-result-object v1

    .line 369
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspGetPlateNumberModel;

    .line 371
    new-instance v5, Lun;

    .line 373
    invoke-direct {v5, v1}, Lun;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspGetPlateNumberModel;)V

    .line 376
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 379
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 381
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 384
    move-result p2

    .line 385
    iput p2, v5, Lec;->c:I

    .line 387
    invoke-static {}, Ll30;->g()Ll30;

    .line 390
    move-result-object p2

    .line 391
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 394
    goto/16 :goto_3

    .line 396
    :sswitch_a
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 399
    move-result-object v1

    .line 400
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspVehicleEnergyInfoModel;

    .line 402
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 405
    move-result-object v1

    .line 406
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspVehicleEnergyInfoModel;

    .line 408
    new-instance v5, Lck0;

    .line 410
    invoke-direct {v5, v1}, Lck0;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspVehicleEnergyInfoModel;)V

    .line 413
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 416
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 418
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 421
    move-result p2

    .line 422
    iput p2, v5, Lec;->c:I

    .line 424
    invoke-static {}, Ll30;->g()Ll30;

    .line 427
    move-result-object p2

    .line 428
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 431
    goto/16 :goto_3

    .line 433
    :sswitch_b
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 436
    move-result-object v1

    .line 437
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspChannelIDModel;

    .line 439
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 442
    move-result-object v1

    .line 443
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspChannelIDModel;

    .line 445
    new-instance v5, Lqe;

    .line 447
    invoke-direct {v5, v1}, Lqe;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspChannelIDModel;)V

    .line 450
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 453
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 455
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 458
    move-result p2

    .line 459
    iput p2, v5, Lec;->c:I

    .line 461
    invoke-static {}, Ll30;->g()Ll30;

    .line 464
    move-result-object p2

    .line 465
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 468
    goto/16 :goto_3

    .line 470
    :sswitch_c
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 473
    move-result-object v1

    .line 474
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspCarRestrictionsInfoModel;

    .line 476
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 479
    move-result-object v1

    .line 480
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspCarRestrictionsInfoModel;

    .line 482
    new-instance v5, Lje;

    .line 484
    invoke-direct {v5, v1}, Lje;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspCarRestrictionsInfoModel;)V

    .line 487
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 490
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 492
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 495
    move-result p2

    .line 496
    iput p2, v5, Lec;->c:I

    .line 498
    invoke-static {}, Ll30;->g()Ll30;

    .line 501
    move-result-object p2

    .line 502
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 505
    goto/16 :goto_3

    .line 507
    :sswitch_d
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 510
    move-result-object v1

    .line 511
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspNewMidPOIsInfoNotifyModel;

    .line 513
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 516
    move-result-object v1

    .line 517
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspNewMidPOIsInfoNotifyModel;

    .line 519
    new-instance v5, Lk30;

    .line 521
    invoke-direct {v5, v1}, Lk30;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspNewMidPOIsInfoNotifyModel;)V

    .line 524
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 527
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 529
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 532
    move-result p2

    .line 533
    iput p2, v5, Lec;->c:I

    .line 535
    invoke-static {}, Ll30;->g()Ll30;

    .line 538
    move-result-object p2

    .line 539
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 542
    goto/16 :goto_3

    .line 544
    :sswitch_e
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 547
    move-result-object v1

    .line 548
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;

    .line 550
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 553
    move-result-object v1

    .line 554
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;

    .line 556
    new-instance v5, Lc60;

    .line 558
    invoke-direct {v5, v1}, Lc60;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;)V

    .line 561
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 564
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 566
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 569
    move-result p2

    .line 570
    iput p2, v5, Lec;->c:I

    .line 572
    invoke-static {}, Ll30;->g()Ll30;

    .line 575
    move-result-object p2

    .line 576
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 579
    goto/16 :goto_3

    .line 581
    :sswitch_f
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 584
    move-result-object v1

    .line 585
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspArOperationInformModel;

    .line 587
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 590
    move-result-object v1

    .line 591
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspArOperationInformModel;

    .line 593
    new-instance v5, Ls5;

    .line 595
    invoke-direct {v5, v1}, Ls5;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspArOperationInformModel;)V

    .line 598
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 601
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 603
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 606
    move-result p2

    .line 607
    iput p2, v5, Lec;->c:I

    .line 609
    invoke-static {}, Ll30;->g()Ll30;

    .line 612
    move-result-object p2

    .line 613
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 616
    goto/16 :goto_3

    .line 618
    :sswitch_10
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 621
    move-result-object v1

    .line 622
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspAvoidJamOperateStatusModel;

    .line 624
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 627
    move-result-object v1

    .line 628
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspAvoidJamOperateStatusModel;

    .line 630
    new-instance v5, Ltb;

    .line 632
    invoke-direct {v5, v1}, Ltb;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspAvoidJamOperateStatusModel;)V

    .line 635
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 638
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 640
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 643
    move-result p2

    .line 644
    iput p2, v5, Lec;->c:I

    .line 646
    invoke-static {}, Ll30;->g()Ll30;

    .line 649
    move-result-object p2

    .line 650
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 653
    goto/16 :goto_3

    .line 655
    :sswitch_11
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 658
    move-result-object v1

    .line 659
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspMessageDisappearNotifyModel;

    .line 661
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 664
    move-result-object v1

    .line 665
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspMessageDisappearNotifyModel;

    .line 667
    new-instance v5, Lh10;

    .line 669
    invoke-direct {v5, v1}, Lh10;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspMessageDisappearNotifyModel;)V

    .line 672
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 675
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 677
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 680
    move-result p2

    .line 681
    iput p2, v5, Lec;->c:I

    .line 683
    invoke-static {}, Ll30;->g()Ll30;

    .line 686
    move-result-object p2

    .line 687
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 690
    goto/16 :goto_3

    .line 692
    :sswitch_12
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 695
    move-result-object v1

    .line 696
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspSlopeAndRollAngleInfoModel;

    .line 698
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 701
    move-result-object v1

    .line 702
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspSlopeAndRollAngleInfoModel;

    .line 704
    new-instance v5, Lhe;

    .line 706
    invoke-direct {v5, v1}, Lhe;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspSlopeAndRollAngleInfoModel;)V

    .line 709
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 712
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 714
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 717
    move-result p2

    .line 718
    iput p2, v5, Lec;->c:I

    .line 720
    invoke-static {}, Ll30;->g()Ll30;

    .line 723
    move-result-object p2

    .line 724
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 727
    goto/16 :goto_3

    .line 729
    :sswitch_13
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 732
    move-result-object v1

    .line 733
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;

    .line 735
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 738
    move-result-object v1

    .line 739
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;

    .line 741
    new-instance v5, Lpj;

    .line 743
    invoke-direct {v5, v1}, Lpj;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;)V

    .line 746
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 749
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 751
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 754
    move-result p2

    .line 755
    iput p2, v5, Lec;->c:I

    .line 757
    invoke-static {}, Ll30;->g()Ll30;

    .line 760
    move-result-object p2

    .line 761
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 764
    goto/16 :goto_3

    .line 766
    :sswitch_14
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 769
    move-result-object v1

    .line 770
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;

    .line 772
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 775
    move-result-object v1

    .line 776
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;

    .line 778
    new-instance v5, Lo10;

    .line 780
    invoke-direct {v5, v1}, Lo10;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;)V

    .line 783
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 786
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 788
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 791
    move-result p2

    .line 792
    iput p2, v5, Lec;->c:I

    .line 794
    invoke-static {}, Ll30;->g()Ll30;

    .line 797
    move-result-object p2

    .line 798
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 801
    goto/16 :goto_3

    .line 803
    :sswitch_15
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 806
    move-result-object v1

    .line 807
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;

    .line 809
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 812
    move-result-object v1

    .line 813
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;

    .line 815
    new-instance v5, Lev;

    .line 817
    invoke-direct {v5, v1}, Lev;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;)V

    .line 820
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 823
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 825
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 828
    move-result p2

    .line 829
    iput p2, v5, Lec;->c:I

    .line 831
    invoke-static {}, Ll30;->g()Ll30;

    .line 834
    move-result-object p2

    .line 835
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 838
    goto/16 :goto_3

    .line 840
    :sswitch_16
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 843
    move-result-object v1

    .line 844
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;

    .line 846
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 849
    move-result-object v1

    .line 850
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;

    .line 852
    new-instance v5, Lbl;

    .line 854
    invoke-direct {v5, v1}, Lbl;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;)V

    .line 857
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 860
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 862
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 865
    move-result p2

    .line 866
    iput p2, v5, Lec;->c:I

    .line 868
    invoke-static {}, Ll30;->g()Ll30;

    .line 871
    move-result-object p2

    .line 872
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 875
    goto/16 :goto_3

    .line 877
    :sswitch_17
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 880
    move-result-object v1

    .line 881
    const-class v6, Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;

    .line 883
    invoke-static {v1, v6}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 886
    move-result-object v1

    .line 887
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;

    .line 889
    new-instance v6, Lhl0;

    .line 891
    invoke-direct {v6, v1}, Lhl0;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;)V

    .line 894
    invoke-virtual {v6, p2}, Lec;->f(Ljava/lang/String;)V

    .line 897
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 899
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 902
    move-result p2

    .line 903
    iput p2, v6, Lec;->c:I

    .line 905
    invoke-static {}, Ll30;->g()Ll30;

    .line 908
    move-result-object p2

    .line 909
    invoke-virtual {p2, v6}, Ll30;->a(Lec;)V

    .line 912
    if-eqz v1, :cond_a

    .line 914
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;->getOperateType()I

    .line 917
    move-result p2

    .line 918
    const/4 v6, 0x3

    .line 919
    if-eq v6, p2, :cond_1

    .line 921
    if-ne v5, p2, :cond_a

    .line 923
    :cond_1
    if-ne v6, p2, :cond_2

    .line 925
    const/4 p2, 0x0

    .line 926
    goto :goto_0

    .line 927
    :cond_2
    const/4 p2, 0x1

    .line 928
    :goto_0
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;->getIsCanZoom()Z

    .line 931
    move-result v1

    .line 932
    new-instance v5, Lwz;

    .line 934
    invoke-direct {v5, p2, v1}, Lwz;-><init>(IZ)V

    .line 937
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 939
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 942
    move-result p2

    .line 943
    iput p2, v5, Lec;->c:I

    .line 945
    invoke-static {}, Ll30;->g()Ll30;

    .line 948
    move-result-object p2

    .line 949
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 952
    goto/16 :goto_3

    .line 954
    :sswitch_18
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 957
    move-result-object v1

    .line 958
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;

    .line 960
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 963
    move-result-object v1

    .line 964
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;

    .line 966
    new-instance v5, Lvc0;

    .line 968
    invoke-direct {v5, v1}, Lvc0;-><init>(Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;)V

    .line 971
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 974
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 976
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 979
    move-result p2

    .line 980
    iput p2, v5, Lec;->c:I

    .line 982
    invoke-static {}, Ll30;->g()Ll30;

    .line 985
    move-result-object p2

    .line 986
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 989
    goto/16 :goto_3

    .line 991
    :sswitch_19
    new-instance v1, Leq$a;

    .line 993
    invoke-direct {v1, p2}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 996
    invoke-static {}, Lse;->c()Lse;

    .line 999
    move-result-object v5

    .line 1000
    const v6, 0xea68

    .line 1003
    invoke-virtual {v5, v6, v1}, Lse;->setOptionalValue(ILeq$a;)V

    .line 1006
    invoke-virtual {v1}, Leq$a;->b()Z

    .line 1009
    move-result v5

    .line 1010
    if-eqz v5, :cond_3

    .line 1012
    invoke-virtual {v1}, Leq$a;->a()Ljava/lang/Object;

    .line 1015
    move-result-object p2

    .line 1016
    check-cast p2, Ljava/lang/String;

    .line 1018
    :cond_3
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1021
    move-result-object v1

    .line 1022
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;

    .line 1024
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1027
    move-result-object v1

    .line 1028
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;

    .line 1030
    new-instance v5, Lmk0;

    .line 1032
    invoke-direct {v5, v1}, Lmk0;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;)V

    .line 1035
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1038
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1040
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1043
    move-result p2

    .line 1044
    iput p2, v5, Lec;->c:I

    .line 1046
    invoke-static {}, Lrv;->H()Lrv;

    .line 1049
    move-result-object p2

    .line 1050
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;->getVersionNum()Ljava/lang/String;

    .line 1053
    move-result-object v1

    .line 1054
    invoke-virtual {p2, v1}, Lrv;->h0(Ljava/lang/String;)V

    .line 1057
    invoke-static {}, Ll30;->g()Ll30;

    .line 1060
    move-result-object p2

    .line 1061
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1064
    goto/16 :goto_3

    .line 1066
    :sswitch_1a
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1069
    move-result-object v1

    .line 1070
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;

    .line 1072
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1075
    move-result-object v1

    .line 1076
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;

    .line 1078
    new-instance v5, Lyh0;

    .line 1080
    invoke-direct {v5, v1}, Lyh0;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspTrafficEventsReportModel;)V

    .line 1083
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1086
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1088
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1091
    move-result p2

    .line 1092
    iput p2, v5, Lec;->c:I

    .line 1094
    invoke-static {}, Ll30;->g()Ll30;

    .line 1097
    move-result-object p2

    .line 1098
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1101
    goto/16 :goto_3

    .line 1103
    :sswitch_1b
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1106
    move-result-object v1

    .line 1107
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;

    .line 1109
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1112
    move-result-object v1

    .line 1113
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;

    .line 1115
    new-instance v5, Lvw;

    .line 1117
    invoke-direct {v5, v1}, Lvw;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;)V

    .line 1120
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1123
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1125
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1128
    move-result p2

    .line 1129
    iput p2, v5, Lec;->c:I

    .line 1131
    invoke-static {}, Ll30;->g()Ll30;

    .line 1134
    move-result-object p2

    .line 1135
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1138
    goto/16 :goto_3

    .line 1140
    :sswitch_1c
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1143
    move-result-object v1

    .line 1144
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;

    .line 1146
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1149
    move-result-object v1

    .line 1150
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;

    .line 1152
    new-instance v5, Lzo;

    .line 1154
    invoke-direct {v5, v1}, Lzo;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;)V

    .line 1157
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1160
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1162
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1165
    move-result p2

    .line 1166
    iput p2, v5, Lec;->c:I

    .line 1168
    invoke-static {}, Ll30;->g()Ll30;

    .line 1171
    move-result-object p2

    .line 1172
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1175
    goto/16 :goto_3

    .line 1177
    :sswitch_1d
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1180
    move-result-object v1

    .line 1181
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspCurrentRoadNameDispatchModel;

    .line 1183
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1186
    move-result-object v1

    .line 1187
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspCurrentRoadNameDispatchModel;

    .line 1189
    new-instance v5, Lih;

    .line 1191
    invoke-direct {v5, v1}, Lih;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspCurrentRoadNameDispatchModel;)V

    .line 1194
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1197
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1199
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1202
    move-result p2

    .line 1203
    iput p2, v5, Lec;->c:I

    .line 1205
    invoke-static {}, Ll30;->g()Ll30;

    .line 1208
    move-result-object p2

    .line 1209
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1212
    goto/16 :goto_3

    .line 1214
    :sswitch_1e
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1217
    move-result-object v1

    .line 1218
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspReturnStatesofClearHistoryRecordModel;

    .line 1220
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1223
    move-result-object v1

    .line 1224
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspReturnStatesofClearHistoryRecordModel;

    .line 1226
    new-instance v5, Lsl;

    .line 1228
    invoke-direct {v5, v1}, Lsl;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspReturnStatesofClearHistoryRecordModel;)V

    .line 1231
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1234
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1236
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1239
    move-result p2

    .line 1240
    iput p2, v5, Lec;->c:I

    .line 1242
    invoke-static {}, Ll30;->g()Ll30;

    .line 1245
    move-result-object p2

    .line 1246
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1249
    goto/16 :goto_3

    .line 1251
    :sswitch_1f
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1254
    move-result-object v1

    .line 1255
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspResidualEnergyInfoModel;

    .line 1257
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1260
    move-result-object v1

    .line 1261
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspResidualEnergyInfoModel;

    .line 1263
    new-instance v5, Lua0;

    .line 1265
    invoke-direct {v5, v1}, Lua0;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspResidualEnergyInfoModel;)V

    .line 1268
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1271
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1273
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1276
    move-result p2

    .line 1277
    iput p2, v5, Lec;->c:I

    .line 1279
    invoke-static {}, Ll30;->g()Ll30;

    .line 1282
    move-result-object p2

    .line 1283
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1286
    goto/16 :goto_3

    .line 1288
    :sswitch_20
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1291
    move-result-object v1

    .line 1292
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspDataConsumptionInfoModel;

    .line 1294
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1297
    move-result-object v1

    .line 1298
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspDataConsumptionInfoModel;

    .line 1300
    new-instance v5, Lsh;

    .line 1302
    invoke-direct {v5, v1}, Lsh;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspDataConsumptionInfoModel;)V

    .line 1305
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1308
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1310
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1313
    move-result p2

    .line 1314
    iput p2, v5, Lec;->c:I

    .line 1316
    invoke-static {}, Ll30;->g()Ll30;

    .line 1319
    move-result-object p2

    .line 1320
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1323
    goto/16 :goto_3

    .line 1325
    :sswitch_21
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1328
    move-result-object v1

    .line 1329
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    .line 1331
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1334
    move-result-object v1

    .line 1335
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    .line 1337
    new-instance v5, Ljc0;

    .line 1339
    invoke-direct {v5, v1}, Ljc0;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;)V

    .line 1342
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1345
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1347
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1350
    move-result p2

    .line 1351
    iput p2, v5, Lec;->c:I

    .line 1353
    invoke-static {}, Ll30;->g()Ll30;

    .line 1356
    move-result-object p2

    .line 1357
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1360
    goto/16 :goto_3

    .line 1362
    :sswitch_22
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1365
    move-result-object v1

    .line 1366
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspGpsStatusNotifyModel;

    .line 1368
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1371
    move-result-object v1

    .line 1372
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspGpsStatusNotifyModel;

    .line 1374
    new-instance v5, Lgo;

    .line 1376
    invoke-direct {v5, v1}, Lgo;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspGpsStatusNotifyModel;)V

    .line 1379
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1382
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1384
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1387
    move-result p2

    .line 1388
    iput p2, v5, Lec;->c:I

    .line 1390
    invoke-static {}, Ll30;->g()Ll30;

    .line 1393
    move-result-object p2

    .line 1394
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1397
    goto/16 :goto_3

    .line 1399
    :sswitch_23
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1402
    move-result-object v1

    .line 1403
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;

    .line 1405
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1408
    move-result-object v1

    .line 1409
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;

    .line 1411
    new-instance v5, Lw5;

    .line 1413
    invoke-direct {v5, v1}, Lw5;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspGetAreaInfoModel;)V

    .line 1416
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1419
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1421
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1424
    move-result p2

    .line 1425
    iput p2, v5, Lec;->c:I

    .line 1427
    invoke-static {}, Ll30;->g()Ll30;

    .line 1430
    move-result-object p2

    .line 1431
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1434
    goto/16 :goto_3

    .line 1436
    :sswitch_24
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1439
    move-result-object v1

    .line 1440
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;

    .line 1442
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1445
    move-result-object v1

    .line 1446
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;

    .line 1448
    new-instance v5, Lil;

    .line 1450
    invoke-direct {v5, v1}, Lil;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;)V

    .line 1453
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1456
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1458
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1461
    move-result p2

    .line 1462
    iput p2, v5, Lec;->c:I

    .line 1464
    invoke-static {}, Ll30;->g()Ll30;

    .line 1467
    move-result-object p2

    .line 1468
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1471
    goto/16 :goto_3

    .line 1473
    :sswitch_25
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1476
    move-result-object v1

    .line 1477
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RspSendLayoutTreeInformationToSystemModel;

    .line 1479
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1482
    move-result-object v1

    .line 1483
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RspSendLayoutTreeInformationToSystemModel;

    .line 1485
    new-instance v5, Lad0;

    .line 1487
    invoke-direct {v5, v1}, Lad0;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RspSendLayoutTreeInformationToSystemModel;)V

    .line 1490
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1493
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1495
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1498
    move-result p2

    .line 1499
    iput p2, v5, Lec;->c:I

    .line 1501
    invoke-static {}, Ll30;->g()Ll30;

    .line 1504
    move-result-object p2

    .line 1505
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1508
    goto/16 :goto_3

    .line 1510
    :sswitch_26
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1513
    move-result-object v1

    .line 1514
    const-class v5, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;

    .line 1516
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1519
    move-result-object v1

    .line 1520
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;

    .line 1522
    new-instance v5, Lel;

    .line 1524
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->getScreenWindow()I

    .line 1527
    move-result v6

    .line 1528
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->getScreenMode()I

    .line 1531
    move-result v7

    .line 1532
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->getScreenStatus()I

    .line 1535
    move-result v8

    .line 1536
    invoke-direct {v5, v6, v7, v8}, Lel;-><init>(III)V

    .line 1539
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1542
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1544
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1547
    move-result p2

    .line 1548
    iput p2, v5, Lec;->c:I

    .line 1550
    invoke-static {}, Ll30;->g()Ll30;

    .line 1553
    move-result-object p2

    .line 1554
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1557
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->getScreenStatus()I

    .line 1560
    move-result p2

    .line 1561
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->getScreenWindow()I

    .line 1564
    move-result v5

    .line 1565
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenRenderModel;->getScreenMode()I

    .line 1568
    move-result v1

    .line 1569
    invoke-static {p2, v5, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->sendExScreenStatus(III)V

    .line 1572
    goto/16 :goto_3

    .line 1574
    :sswitch_27
    new-instance v1, Lfz;

    .line 1576
    invoke-direct {v1}, Lfz;-><init>()V

    .line 1579
    invoke-virtual {v1, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1582
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1584
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1587
    move-result p2

    .line 1588
    iput p2, v1, Lec;->c:I

    .line 1590
    invoke-static {}, Ll30;->g()Ll30;

    .line 1593
    move-result-object p2

    .line 1594
    invoke-virtual {p2, v1}, Ll30;->a(Lec;)V

    .line 1597
    invoke-static {v0}, Lcom/autonavi/amapauto/settings/AndroidSystemSetting;->callSystemApp(I)V

    .line 1600
    goto/16 :goto_3

    .line 1602
    :sswitch_28
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1605
    move-result-object v1

    .line 1606
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/user/SendAutoLoginStateModel;

    .line 1608
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1611
    move-result-object v1

    .line 1612
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/user/SendAutoLoginStateModel;

    .line 1614
    new-instance v5, Ly0;

    .line 1616
    invoke-direct {v5, v1}, Ly0;-><init>(Lcom/autonavi/amapauto/protocol/model/service/user/SendAutoLoginStateModel;)V

    .line 1619
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1622
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1624
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1627
    move-result p2

    .line 1628
    iput p2, v5, Lec;->c:I

    .line 1630
    invoke-static {}, Ll30;->g()Ll30;

    .line 1633
    move-result-object p2

    .line 1634
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1637
    goto/16 :goto_3

    .line 1639
    :sswitch_29
    const-string v1, "NotifyFavInfoUpdate"

    .line 1641
    new-array v5, v2, [Ljava/lang/Object;

    .line 1643
    invoke-static {v4, v1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1646
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1649
    move-result-object v1

    .line 1650
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;

    .line 1652
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1655
    move-result-object v1

    .line 1656
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;

    .line 1658
    new-instance v5, Lyl;

    .line 1660
    invoke-direct {v5, v1}, Lyl;-><init>(Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;)V

    .line 1663
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1666
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1668
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1671
    move-result p2

    .line 1672
    iput p2, v5, Lec;->c:I

    .line 1674
    invoke-static {}, Ll30;->g()Ll30;

    .line 1677
    move-result-object p2

    .line 1678
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1681
    goto/16 :goto_3

    .line 1683
    :sswitch_2a
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1686
    move-result-object v1

    .line 1687
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/user/NotifyBindCarAutoUserModel;

    .line 1689
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1692
    move-result-object v1

    .line 1693
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/user/NotifyBindCarAutoUserModel;

    .line 1695
    new-instance v5, Lfe;

    .line 1697
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/user/NotifyBindCarAutoUserModel;->s()Ljava/lang/String;

    .line 1700
    move-result-object v6

    .line 1701
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/user/NotifyBindCarAutoUserModel;->t()Ljava/lang/String;

    .line 1704
    move-result-object v7

    .line 1705
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/user/NotifyBindCarAutoUserModel;->r()Ljava/lang/String;

    .line 1708
    move-result-object v8

    .line 1709
    invoke-direct {v5, v6, v7, v8}, Lfe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/user/NotifyBindCarAutoUserModel;->u()Ljava/lang/Boolean;

    .line 1715
    move-result-object v1

    .line 1716
    invoke-virtual {v5, v1}, Lfe;->g(Ljava/lang/Boolean;)V

    .line 1719
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1722
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1724
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1727
    move-result p2

    .line 1728
    iput p2, v5, Lec;->c:I

    .line 1730
    invoke-static {}, Ll30;->g()Ll30;

    .line 1733
    move-result-object p2

    .line 1734
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1737
    goto/16 :goto_3

    .line 1739
    :sswitch_2b
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1742
    move-result-object v1

    .line 1743
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/ArStatusModel;

    .line 1745
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1748
    move-result-object v1

    .line 1749
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/ArStatusModel;

    .line 1751
    new-instance v5, Lu5;

    .line 1753
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/ArStatusModel;->r()I

    .line 1756
    move-result v1

    .line 1757
    invoke-direct {v5, v1}, Lu5;-><init>(I)V

    .line 1760
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1763
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1765
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1768
    move-result p2

    .line 1769
    iput p2, v5, Lec;->c:I

    .line 1771
    invoke-static {}, Ll30;->g()Ll30;

    .line 1774
    move-result-object p2

    .line 1775
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1778
    goto/16 :goto_3

    .line 1780
    :sswitch_2c
    invoke-static {p2}, Lew;->j(Ljava/lang/String;)Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;

    .line 1783
    move-result-object v1

    .line 1784
    invoke-static {}, Lqf;->b()Z

    .line 1787
    move-result v5

    .line 1788
    if-eqz v5, :cond_4

    .line 1790
    new-instance v5, Llh0;

    .line 1792
    invoke-direct {v5, v1}, Llh0;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;)V

    .line 1795
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1798
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1800
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1803
    move-result p2

    .line 1804
    iput p2, v5, Lec;->c:I

    .line 1806
    invoke-static {}, Ll30;->g()Ll30;

    .line 1809
    move-result-object p2

    .line 1810
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1813
    :cond_4
    invoke-static {}, Lnb;->j()Lnb;

    .line 1816
    move-result-object p2

    .line 1817
    invoke-virtual {p2, v1}, Lnb;->I(Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;)V

    .line 1820
    const-string p2, "\u60ac\u6d6e\u7a97\u5b9e\u65f6\u4ea4\u901a\u5149\u67f1\u56fe\u900f\u51fa segmentData\uff1a{?}"

    .line 1822
    new-array v5, v3, [Ljava/lang/Object;

    .line 1824
    if-nez v1, :cond_5

    .line 1826
    const-string v6, "is null"

    .line 1828
    goto :goto_1

    .line 1829
    :cond_5
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;->toString()Ljava/lang/String;

    .line 1832
    move-result-object v6

    .line 1833
    :goto_1
    aput-object v6, v5, v2

    .line 1835
    invoke-static {v4, p2, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1838
    invoke-static {}, Lnm;->e()Lnm;

    .line 1841
    move-result-object p2

    .line 1842
    invoke-virtual {p2, v1}, Lnm;->u(Lcom/autonavi/amapauto/jni/protocol/data/TmcSegmentData;)V

    .line 1845
    goto/16 :goto_3

    .line 1847
    :sswitch_2d
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1850
    move-result-object v1

    .line 1851
    const-class v5, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;

    .line 1853
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1856
    move-result-object v1

    .line 1857
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;

    .line 1859
    new-instance v5, Lai0;

    .line 1861
    invoke-direct {v5, v1}, Lai0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/drive_module/TripReporterModel;)V

    .line 1864
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1867
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1869
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1872
    move-result p2

    .line 1873
    iput p2, v5, Lec;->c:I

    .line 1875
    invoke-static {}, Ll30;->g()Ll30;

    .line 1878
    move-result-object p2

    .line 1879
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1882
    goto/16 :goto_3

    .line 1884
    :sswitch_2e
    const-string v1, "SendManeuverIconData"

    .line 1886
    new-array v5, v2, [Ljava/lang/Object;

    .line 1888
    invoke-static {v4, v1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1891
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1894
    move-result-object v1

    .line 1895
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/ManeuverIconModel;

    .line 1897
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1900
    move-result-object v1

    .line 1901
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/ManeuverIconModel;

    .line 1903
    new-instance v5, Lqz;

    .line 1905
    invoke-direct {v5, v1}, Lqz;-><init>(Lcom/autonavi/amapauto/protocol/model/service/ManeuverIconModel;)V

    .line 1908
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1911
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1913
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1916
    move-result p2

    .line 1917
    iput p2, v5, Lec;->c:I

    .line 1919
    invoke-static {}, Ll30;->g()Ll30;

    .line 1922
    move-result-object p2

    .line 1923
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1926
    goto/16 :goto_3

    .line 1928
    :sswitch_2f
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1931
    move-result-object v1

    .line 1932
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/NaviFacilityProtocolModel;

    .line 1934
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1937
    move-result-object v1

    .line 1938
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/NaviFacilityProtocolModel;

    .line 1940
    new-instance v5, Lk20;

    .line 1942
    invoke-direct {v5}, Lk20;-><init>()V

    .line 1945
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/NaviFacilityProtocolModel;->s()Z

    .line 1948
    move-result v6

    .line 1949
    invoke-virtual {v5, v6}, Lk20;->g(Z)V

    .line 1952
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/NaviFacilityProtocolModel;->r()I

    .line 1955
    move-result v1

    .line 1956
    invoke-virtual {v5, v1}, Lk20;->h(I)V

    .line 1959
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1962
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1964
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1967
    move-result p2

    .line 1968
    iput p2, v5, Lec;->c:I

    .line 1970
    invoke-static {}, Ll30;->g()Ll30;

    .line 1973
    move-result-object p2

    .line 1974
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 1977
    goto/16 :goto_3

    .line 1979
    :sswitch_30
    invoke-static {p2}, Lew;->f(Ljava/lang/String;)Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;

    .line 1982
    move-result-object v1

    .line 1983
    new-instance v5, Lmk;

    .line 1985
    invoke-direct {v5, v1}, Lmk;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/DriveWayData;)V

    .line 1988
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 1991
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 1993
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 1996
    move-result p2

    .line 1997
    iput p2, v5, Lec;->c:I

    .line 1999
    invoke-static {}, Ll30;->g()Ll30;

    .line 2002
    move-result-object p2

    .line 2003
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 2006
    goto/16 :goto_3

    .line 2008
    :sswitch_31
    const-string v1, "\u7ee7\u7eed\u5bfc\u822a\u4fe1\u606f\u900f\u51fa"

    .line 2010
    new-array v6, v2, [Ljava/lang/Object;

    .line 2012
    invoke-static {v4, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2015
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 2018
    move-result-object v1

    .line 2019
    const-class v6, Lcom/autonavi/amapauto/protocol/model/service/ContinueNaviModel;

    .line 2021
    invoke-static {v1, v6}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 2024
    move-result-object v1

    .line 2025
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/ContinueNaviModel;

    .line 2027
    if-eqz v1, :cond_8

    .line 2029
    new-instance v6, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;

    .line 2031
    invoke-direct {v6}, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;-><init>()V

    .line 2034
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/ContinueNaviModel;->r()Ljava/lang/String;

    .line 2037
    move-result-object v7

    .line 2038
    iput-object v7, v6, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->content:Ljava/lang/String;

    .line 2040
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/ContinueNaviModel;->t()Z

    .line 2043
    move-result v7

    .line 2044
    iput-boolean v7, v6, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->isShow:Z

    .line 2046
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/ContinueNaviModel;->u()Z

    .line 2049
    move-result v7

    .line 2050
    iput-boolean v7, v6, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->isTop:Z

    .line 2052
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/ContinueNaviModel;->s()I

    .line 2055
    move-result v1

    .line 2056
    if-ne v1, v5, :cond_6

    .line 2058
    iput v0, v6, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->msgType:I

    .line 2060
    goto :goto_2

    .line 2061
    :cond_6
    if-ne v1, v0, :cond_7

    .line 2063
    iput v5, v6, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->msgType:I

    .line 2065
    goto :goto_2

    .line 2066
    :cond_7
    iput v1, v6, Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;->msgType:I

    .line 2068
    :goto_2
    new-instance v1, Lzk;

    .line 2070
    invoke-direct {v1, v6}, Lzk;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/MessageCompentData;)V

    .line 2073
    invoke-virtual {v1, p2}, Lec;->f(Ljava/lang/String;)V

    .line 2076
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 2078
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 2081
    move-result p2

    .line 2082
    iput p2, v1, Lec;->c:I

    .line 2084
    invoke-static {}, Ll30;->g()Ll30;

    .line 2087
    move-result-object p2

    .line 2088
    invoke-virtual {p2, v1}, Ll30;->a(Lec;)V

    .line 2091
    goto/16 :goto_3

    .line 2093
    :cond_8
    const-string p2, "PROTOCOL_CONTINUE_NAVI model is null"

    .line 2095
    new-array v1, v2, [Ljava/lang/Object;

    .line 2097
    invoke-static {v4, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2100
    goto/16 :goto_3

    .line 2102
    :sswitch_32
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 2105
    move-result-object v1

    .line 2106
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/AvoidJamModel;

    .line 2108
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 2111
    move-result-object v1

    .line 2112
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/AvoidJamModel;

    .line 2114
    new-instance v5, Lrb;

    .line 2116
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/AvoidJamModel;->getMessage()Ljava/lang/String;

    .line 2119
    move-result-object v6

    .line 2120
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/AvoidJamModel;->s()I

    .line 2123
    move-result v1

    .line 2124
    invoke-direct {v5, v6, v1}, Lrb;-><init>(Ljava/lang/String;I)V

    .line 2127
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 2130
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 2132
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 2135
    move-result p2

    .line 2136
    iput p2, v5, Lec;->c:I

    .line 2138
    invoke-static {}, Ll30;->g()Ll30;

    .line 2141
    move-result-object p2

    .line 2142
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 2145
    goto/16 :goto_3

    .line 2147
    :sswitch_33
    invoke-static {p2}, Lew;->g(Ljava/lang/String;)Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;

    .line 2150
    move-result-object v1

    .line 2151
    new-instance v5, Lj50;

    .line 2153
    invoke-direct {v5, v1}, Lj50;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/NaviParkingData;)V

    .line 2156
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 2159
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 2161
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 2164
    move-result p2

    .line 2165
    iput p2, v5, Lec;->c:I

    .line 2167
    invoke-static {}, Ll30;->g()Ll30;

    .line 2170
    move-result-object p2

    .line 2171
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 2174
    goto/16 :goto_3

    .line 2176
    :sswitch_34
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 2179
    move-result-object v1

    .line 2180
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/DriveGasInfoModle;

    .line 2182
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 2185
    move-result-object v1

    .line 2186
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/DriveGasInfoModle;

    .line 2188
    new-instance v5, Lkk;

    .line 2190
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/DriveGasInfoModle;->r()I

    .line 2193
    move-result v1

    .line 2194
    invoke-direct {v5, v1}, Lkk;-><init>(I)V

    .line 2197
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 2200
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 2202
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 2205
    move-result p2

    .line 2206
    iput p2, v5, Lec;->c:I

    .line 2208
    invoke-static {}, Ll30;->g()Ll30;

    .line 2211
    move-result-object p2

    .line 2212
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 2215
    goto/16 :goto_3

    .line 2217
    :sswitch_35
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 2220
    move-result-object v1

    .line 2221
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;

    .line 2223
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 2226
    move-result-object v1

    .line 2227
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;

    .line 2229
    invoke-static {v1}, La80;->j(Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;)Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 2232
    move-result-object v1

    .line 2233
    if-eqz v1, :cond_9

    .line 2235
    invoke-static {}, Lse;->c()Lse;

    .line 2238
    move-result-object v5

    .line 2239
    invoke-virtual {v5, v1}, Lse;->wrapGuideInfoProtocolData(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 2242
    new-instance v5, Loo;

    .line 2244
    invoke-direct {v5, v1}, Loo;-><init>(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 2247
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 2250
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 2252
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 2255
    move-result p2

    .line 2256
    iput p2, v5, Lec;->c:I

    .line 2258
    invoke-static {}, Ll30;->g()Ll30;

    .line 2261
    move-result-object p2

    .line 2262
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 2265
    invoke-static {}, Lnb;->j()Lnb;

    .line 2268
    move-result-object p2

    .line 2269
    invoke-virtual {p2, v1}, Lnb;->A(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 2272
    invoke-static {}, Lnm;->e()Lnm;

    .line 2275
    move-result-object p2

    .line 2276
    invoke-virtual {p2, v1}, Lnm;->l(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 2279
    invoke-static {}, Lse;->c()Lse;

    .line 2282
    move-result-object p2

    .line 2283
    invoke-virtual {p2, v1}, Lse;->sendTurn(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 2286
    invoke-static {}, Lh6;->c()Lh6;

    .line 2289
    move-result-object p2

    .line 2290
    invoke-virtual {p2, v1}, Lh6;->e(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V

    .line 2293
    goto/16 :goto_3

    .line 2295
    :cond_9
    const-string p2, "distributeDispatch 30407 guideInfoProtocolData is null"

    .line 2297
    new-array v1, v2, [Ljava/lang/Object;

    .line 2299
    invoke-static {v4, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2302
    goto/16 :goto_3

    .line 2304
    :sswitch_36
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 2307
    move-result-object v1

    .line 2308
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;

    .line 2310
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 2313
    move-result-object v1

    .line 2314
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;

    .line 2316
    new-instance v5, Lck;

    .line 2318
    invoke-direct {v5, v1}, Lck;-><init>(Lcom/autonavi/amapauto/protocol/model/service/DrLocationInfoModel;)V

    .line 2321
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 2324
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 2326
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 2329
    move-result p2

    .line 2330
    iput p2, v5, Lec;->c:I

    .line 2332
    invoke-static {}, Ll30;->g()Ll30;

    .line 2335
    move-result-object p2

    .line 2336
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 2339
    goto/16 :goto_3

    .line 2341
    :sswitch_37
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 2344
    move-result-object p2

    .line 2345
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;

    .line 2347
    invoke-static {p2, v1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 2350
    move-result-object p2

    .line 2351
    check-cast p2, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;

    .line 2353
    if-eqz p2, :cond_a

    .line 2355
    invoke-virtual {p2}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;->r()I

    .line 2358
    move-result v1

    .line 2359
    invoke-static {v1}, Ly70;->a(I)I

    .line 2362
    move-result v1

    .line 2363
    invoke-virtual {p2}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;->s()I

    .line 2366
    move-result p2

    .line 2367
    invoke-static {v1, p2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->sendAutoStatus(II)V

    .line 2370
    goto/16 :goto_3

    .line 2372
    :sswitch_38
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 2375
    move-result-object v1

    .line 2376
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;

    .line 2378
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 2381
    move-result-object v1

    .line 2382
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;

    .line 2384
    if-eqz v1, :cond_a

    .line 2386
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;->getType()I

    .line 2389
    move-result v5

    .line 2390
    const/4 v6, -0x1

    .line 2391
    if-eq v6, v5, :cond_a

    .line 2393
    new-instance v5, Lop;

    .line 2395
    invoke-direct {v5, v1}, Lop;-><init>(Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;)V

    .line 2398
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 2401
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 2403
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 2406
    move-result p2

    .line 2407
    iput p2, v5, Lec;->c:I

    .line 2409
    invoke-static {}, Ll30;->g()Ll30;

    .line 2412
    move-result-object p2

    .line 2413
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 2416
    const/16 p2, 0x3ed

    .line 2418
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetBooleanValue(I)Z

    .line 2421
    move-result p2

    .line 2422
    if-eqz p2, :cond_a

    .line 2424
    new-instance p2, Li10;

    .line 2426
    invoke-direct {p2}, Li10;-><init>()V

    .line 2429
    invoke-virtual {p2, v3}, Li10;->m(I)V

    .line 2432
    invoke-virtual {p2, v1}, Li10;->i(Lcom/autonavi/amapauto/protocol/model/service/ResponseHomeCompany;)V

    .line 2435
    iget-object v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 2437
    invoke-static {v1, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 2440
    move-result v1

    .line 2441
    iput v1, p2, Lec;->c:I

    .line 2443
    invoke-static {}, Ll30;->g()Ll30;

    .line 2446
    move-result-object v1

    .line 2447
    invoke-virtual {v1, p2}, Ll30;->a(Lec;)V

    .line 2450
    goto :goto_3

    .line 2451
    :sswitch_39
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 2454
    move-result-object v1

    .line 2455
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;

    .line 2457
    invoke-static {v1, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 2460
    move-result-object v1

    .line 2461
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;

    .line 2463
    new-instance v5, Lgb0;

    .line 2465
    invoke-direct {v5, v1}, Lgb0;-><init>(Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;)V

    .line 2468
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 2471
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 2473
    invoke-static {p2, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 2476
    move-result p2

    .line 2477
    iput p2, v5, Lec;->c:I

    .line 2479
    invoke-static {}, Ll30;->g()Ll30;

    .line 2482
    move-result-object p2

    .line 2483
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2486
    goto :goto_3

    .line 2487
    :catch_0
    move-exception p2

    .line 2488
    new-array v0, v0, [Ljava/lang/Object;

    .line 2490
    iget p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->protocolId:I

    .line 2492
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2495
    move-result-object p1

    .line 2496
    aput-object p1, v0, v2

    .line 2498
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2501
    move-result-object p1

    .line 2502
    aput-object p1, v0, v3

    .line 2504
    const-string p1, "distributeDispatch ProtocolId = {?} exception:{?}"

    .line 2506
    invoke-static {v4, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2509
    :cond_a
    :goto_3
    return-void

    .line 2510
    nop

    .line 2511
    :sswitch_data_0
    .sparse-switch
        0x7535 -> :sswitch_39
        0x7537 -> :sswitch_38
        0x75f8 -> :sswitch_37
        0x75f9 -> :sswitch_36
        0x76c7 -> :sswitch_35
        0x76cc -> :sswitch_34
        0x76d0 -> :sswitch_33
        0x76d2 -> :sswitch_32
        0x76d6 -> :sswitch_31
        0x76d8 -> :sswitch_30
        0x76d9 -> :sswitch_2f
        0x76da -> :sswitch_2e
        0x76de -> :sswitch_2d
        0x76e3 -> :sswitch_2c
        0x76e5 -> :sswitch_2b
        0x7727 -> :sswitch_2a
        0x772c -> :sswitch_29
        0x772e -> :sswitch_28
        0x7730 -> :sswitch_27
        0x7851 -> :sswitch_26
        0xc359 -> :sswitch_25
        0x1389c -> :sswitch_24
        0x1389e -> :sswitch_23
        0x138a1 -> :sswitch_22
        0x138a2 -> :sswitch_21
        0x138b1 -> :sswitch_20
        0x138b2 -> :sswitch_1f
        0x138b4 -> :sswitch_1e
        0x138b9 -> :sswitch_1d
        0x138bf -> :sswitch_1c
        0x138c4 -> :sswitch_1b
        0x138c5 -> :sswitch_1a
        0x138c6 -> :sswitch_19
        0x138d9 -> :sswitch_18
        0x138df -> :sswitch_17
        0x138e4 -> :sswitch_16
        0x138e9 -> :sswitch_15
        0x138ec -> :sswitch_14
        0x138ed -> :sswitch_13
        0x138f0 -> :sswitch_12
        0x138f4 -> :sswitch_11
        0x138f7 -> :sswitch_10
        0x138f8 -> :sswitch_f
        0x138fa -> :sswitch_e
        0x1390a -> :sswitch_d
        0x1390e -> :sswitch_c
        0x1390f -> :sswitch_b
        0x13912 -> :sswitch_a
        0x13915 -> :sswitch_9
        0x1391b -> :sswitch_8
        0x13921 -> :sswitch_7
        0x1392c -> :sswitch_6
        0x1392e -> :sswitch_5
        0x13930 -> :sswitch_4
        0x13931 -> :sswitch_3
        0x1393b -> :sswitch_2
        0x1393d -> :sswitch_1
        0x13941 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;)V
    .locals 11

    .line 1
    const-string v0, "requestCode"

    .line 3
    const-string v1, "ProtocolDistributeManager"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 8
    const-string p1, "distributeReceive inParam is null"

    .line 10
    new-array v0, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v3, 0x1

    .line 17
    new-array v4, v3, [Ljava/lang/Object;

    .line 19
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->toString()Ljava/lang/String;

    .line 22
    move-result-object v5

    .line 23
    aput-object v5, v4, v2

    .line 25
    const-string v5, "distributeReceive inParam:{?}"

    .line 27
    invoke-static {v1, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Li;->b()Z

    .line 33
    move-result v4

    .line 34
    iget-object v5, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 36
    iget-object v5, v5, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->messageType:Ljava/lang/String;

    .line 38
    const-string v6, "dispatch"

    .line 40
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v5

    .line 44
    const-string v7, "request"

    .line 46
    if-nez v5, :cond_2

    .line 48
    iget-object v5, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 50
    iget-object v5, v5, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->messageType:Ljava/lang/String;

    .line 52
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v5, 0x0

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    const/4 v5, 0x1

    .line 62
    :goto_1
    iget-object v8, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonData:Ljava/lang/String;

    .line 64
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    move-result v8

    .line 68
    const-string v9, ""

    .line 70
    if-eqz v4, :cond_4

    .line 72
    if-eqz v5, :cond_4

    .line 74
    if-nez v8, :cond_4

    .line 76
    :try_start_0
    const-string v5, "distributeReceive before jsonData:{?}"

    .line 78
    new-array v8, v3, [Ljava/lang/Object;

    .line 80
    iget-object v10, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonData:Ljava/lang/String;

    .line 82
    aput-object v10, v8, v2

    .line 84
    invoke-static {v1, v5, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    new-instance v5, Lorg/json/JSONObject;

    .line 89
    iget-object v8, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonData:Ljava/lang/String;

    .line 91
    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v8

    .line 98
    invoke-static {v8, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 101
    move-result v8

    .line 102
    if-nez v8, :cond_3

    .line 104
    invoke-static {}, Lu70;->b()I

    .line 107
    move-result v8

    .line 108
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v8

    .line 123
    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    iput-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonData:Ljava/lang/String;

    .line 132
    const-string v5, "distributeReceive after jsonData:{?}"

    .line 134
    new-array v8, v3, [Ljava/lang/Object;

    .line 136
    aput-object v0, v8, v2

    .line 138
    invoke-static {v1, v5, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_2

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 146
    move-result-object v5

    .line 147
    new-array v8, v2, [Ljava/lang/Object;

    .line 149
    invoke-static {v1, v5, v0, v8}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 152
    :cond_4
    :goto_2
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 154
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->messageType:Ljava/lang/String;

    .line 156
    const-string v5, "response"

    .line 158
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result v0

    .line 162
    const/4 v5, 0x2

    .line 163
    if-eqz v0, :cond_6

    .line 165
    if-eqz v4, :cond_5

    .line 167
    new-array v0, v5, [Ljava/lang/Object;

    .line 169
    iget-object v4, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonData:Ljava/lang/String;

    .line 171
    aput-object v4, v0, v2

    .line 173
    iget-object v2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 175
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->toJsonString()Ljava/lang/String;

    .line 178
    move-result-object v2

    .line 179
    aput-object v2, v0, v3

    .line 181
    const-string v2, "galtest respone res_process_data:{?} json_header:{?}"

    .line 183
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_5
    invoke-virtual {p0, p1}, Lv70;->e(Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;)V

    .line 189
    goto/16 :goto_5

    .line 191
    :cond_6
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 193
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->messageType:Ljava/lang/String;

    .line 195
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    move-result v0

    .line 199
    const-string v6, "0"

    .line 201
    if-eqz v0, :cond_9

    .line 203
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 205
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 210
    move-result v7

    .line 211
    if-eqz v7, :cond_8

    .line 213
    if-eqz v4, :cond_7

    .line 215
    iget-object v4, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    .line 219
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    invoke-static {}, Lu70;->b()I

    .line 225
    move-result v7

    .line 226
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v6

    .line 236
    iput-object v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 238
    const/4 v4, 0x3

    .line 239
    new-array v4, v4, [Ljava/lang/Object;

    .line 241
    aput-object v0, v4, v2

    .line 243
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonData:Ljava/lang/String;

    .line 245
    aput-object v0, v4, v3

    .line 247
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 249
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->toJsonString()Ljava/lang/String;

    .line 252
    move-result-object v0

    .line 253
    aput-object v0, v4, v5

    .line 255
    const-string v0, "galtest dispatch rawRequestCode:{?} res_process_data:{?} json_header:{?}"

    .line 257
    invoke-static {v1, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    goto :goto_3

    .line 261
    :cond_7
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 263
    iput-object v6, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 265
    :cond_8
    :goto_3
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 267
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonData:Ljava/lang/String;

    .line 269
    invoke-virtual {p0, v0, p1}, Lv70;->a(Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;Ljava/lang/String;)V

    .line 272
    goto :goto_5

    .line 273
    :cond_9
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 275
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->messageType:Ljava/lang/String;

    .line 277
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_c

    .line 283
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 285
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 290
    move-result v0

    .line 291
    if-eqz v0, :cond_b

    .line 293
    if-eqz v4, :cond_a

    .line 295
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    .line 299
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    invoke-static {}, Lu70;->b()I

    .line 305
    move-result v6

    .line 306
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    move-result-object v4

    .line 316
    iput-object v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 318
    new-array v0, v5, [Ljava/lang/Object;

    .line 320
    iget-object v4, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonData:Ljava/lang/String;

    .line 322
    aput-object v4, v0, v2

    .line 324
    iget-object v2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 326
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->toJsonString()Ljava/lang/String;

    .line 329
    move-result-object v2

    .line 330
    aput-object v2, v0, v3

    .line 332
    const-string v2, "galtest request res_process_data:{?} json_header:{?}"

    .line 334
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    goto :goto_4

    .line 338
    :cond_a
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 340
    iput-object v6, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 342
    :cond_b
    :goto_4
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 344
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonData:Ljava/lang/String;

    .line 346
    invoke-virtual {p0, v0, p1}, Lv70;->d(Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;Ljava/lang/String;)V

    .line 349
    goto :goto_5

    .line 350
    :cond_c
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 352
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->messageType:Ljava/lang/String;

    .line 354
    const-string v4, "requestsync"

    .line 356
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_d

    .line 362
    const-string p1, "distributeReceive requestsync"

    .line 364
    new-array v0, v2, [Ljava/lang/Object;

    .line 366
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    goto :goto_5

    .line 370
    :cond_d
    new-array v0, v3, [Ljava/lang/Object;

    .line 372
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 374
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->messageType:Ljava/lang/String;

    .line 376
    aput-object p1, v0, v2

    .line 378
    const-string p1, "distributeReceive not support messageType:{?}"

    .line 380
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    :goto_5
    return-void
.end method

.method public c(Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;)Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "ProtocolDistributeManager"

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p1, :cond_3

    .line 7
    iget-object v3, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 9
    if-nez v3, :cond_0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v3, 0x1

    .line 13
    new-array v4, v3, [Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->toString()Ljava/lang/String;

    .line 18
    move-result-object v5

    .line 19
    aput-object v5, v4, v2

    .line 21
    const-string v5, "distributeReceiveSync inParam:{?}"

    .line 23
    invoke-static {v1, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v4, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 28
    if-nez v4, :cond_1

    .line 30
    const-string p1, "distributeReceiveSync jsonHeader is null"

    .line 32
    new-array v2, v2, [Ljava/lang/Object;

    .line 34
    invoke-static {v1, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-object v0

    .line 38
    :cond_1
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;

    .line 40
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;-><init>()V

    .line 43
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 45
    iget p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->protocolId:I

    .line 47
    const v1, 0x13883

    .line 50
    if-eq p1, v1, :cond_2

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->isBluetoothAdapterEnabled()Z

    .line 56
    move-result p1

    .line 57
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/BluetoothEnabledModel;

    .line 59
    invoke-direct {v0, p1}, Lcom/autonavi/amapauto/protocol/model/service/BluetoothEnabledModel;-><init>(Z)V

    .line 62
    invoke-static {v3, v0, v2}, Lew;->a(ILcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;I)Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;

    .line 65
    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 67
    :cond_3
    :goto_1
    const-string p1, "distributeReceiveSync inParam is null"

    .line 69
    new-array v2, v2, [Ljava/lang/Object;

    .line 71
    invoke-static {v1, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    return-object v0
.end method

.method public final d(Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;Ljava/lang/String;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "ProtocolDistributeManager"

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v4

    .line 12
    if-eqz v4, :cond_0

    .line 14
    goto/16 :goto_1

    .line 16
    :cond_0
    :try_start_0
    invoke-static {}, Lse;->c()Lse;

    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4, p1, p2}, Lse;->handleProtocolRequest(Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;Ljava/lang/String;)V

    .line 23
    iget v4, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->protocolId:I

    .line 25
    sparse-switch v4, :sswitch_data_0

    .line 28
    goto/16 :goto_0

    .line 30
    :sswitch_0
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 33
    move-result-object v4

    .line 34
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/ReqUserPersonalInformationAuthorizedModel;

    .line 36
    invoke-static {v4, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/autonavi/amapauto/protocol/model/service/ReqUserPersonalInformationAuthorizedModel;

    .line 42
    new-instance v5, Lkj0;

    .line 44
    invoke-direct {v5, v4}, Lkj0;-><init>(Lcom/autonavi/amapauto/protocol/model/service/ReqUserPersonalInformationAuthorizedModel;)V

    .line 47
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 50
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 52
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 55
    move-result p2

    .line 56
    iput p2, v5, Lec;->c:I

    .line 58
    invoke-static {}, Ll30;->g()Ll30;

    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 65
    goto/16 :goto_0

    .line 67
    :sswitch_1
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 70
    move-result-object v4

    .line 71
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/ReqGetTruckParmModel;

    .line 73
    invoke-static {v4, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lcom/autonavi/amapauto/protocol/model/service/ReqGetTruckParmModel;

    .line 79
    new-instance v5, Lzn;

    .line 81
    invoke-direct {v5, v4}, Lzn;-><init>(Lcom/autonavi/amapauto/protocol/model/service/ReqGetTruckParmModel;)V

    .line 84
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 87
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 89
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 92
    move-result p2

    .line 93
    iput p2, v5, Lec;->c:I

    .line 95
    invoke-static {}, Ll30;->g()Ll30;

    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 102
    goto/16 :goto_0

    .line 104
    :sswitch_2
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 107
    move-result-object v4

    .line 108
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/ReqRegistVRKeywordsModel;

    .line 110
    invoke-static {v4, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lcom/autonavi/amapauto/protocol/model/service/ReqRegistVRKeywordsModel;

    .line 116
    new-instance v5, Ly90;

    .line 118
    invoke-direct {v5, v4}, Ly90;-><init>(Lcom/autonavi/amapauto/protocol/model/service/ReqRegistVRKeywordsModel;)V

    .line 121
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 124
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 126
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 129
    move-result p2

    .line 130
    iput p2, v5, Lec;->c:I

    .line 132
    invoke-static {}, Ll30;->g()Ll30;

    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 139
    goto/16 :goto_0

    .line 141
    :sswitch_3
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 144
    move-result-object v4

    .line 145
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/ReqGetManufactureInfoModel;

    .line 147
    invoke-static {v4, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Lcom/autonavi/amapauto/protocol/model/service/ReqGetManufactureInfoModel;

    .line 153
    new-instance v5, Lon;

    .line 155
    invoke-direct {v5, v4}, Lon;-><init>(Lcom/autonavi/amapauto/protocol/model/service/ReqGetManufactureInfoModel;)V

    .line 158
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 161
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 163
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 166
    move-result p2

    .line 167
    iput p2, v5, Lec;->c:I

    .line 169
    invoke-static {}, Ll30;->g()Ll30;

    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 176
    goto/16 :goto_0

    .line 178
    :sswitch_4
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 181
    move-result-object v4

    .line 182
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/ReqGetAccountInfoModel;

    .line 184
    invoke-static {v4, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 187
    move-result-object v4

    .line 188
    check-cast v4, Lcom/autonavi/amapauto/protocol/model/service/ReqGetAccountInfoModel;

    .line 190
    new-instance v5, Ljn;

    .line 192
    invoke-direct {v5, v4}, Ljn;-><init>(Lcom/autonavi/amapauto/protocol/model/service/ReqGetAccountInfoModel;)V

    .line 195
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 198
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 200
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 203
    move-result p2

    .line 204
    iput p2, v5, Lec;->c:I

    .line 206
    invoke-static {}, Ll30;->g()Ll30;

    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 213
    goto/16 :goto_0

    .line 215
    :sswitch_5
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 218
    move-result-object v4

    .line 219
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/ReqIsNOAFunctionOpenModel;

    .line 221
    invoke-static {v4, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 224
    move-result-object v4

    .line 225
    check-cast v4, Lcom/autonavi/amapauto/protocol/model/service/ReqIsNOAFunctionOpenModel;

    .line 227
    new-instance v5, Liv;

    .line 229
    invoke-direct {v5, v4}, Liv;-><init>(Lcom/autonavi/amapauto/protocol/model/service/ReqIsNOAFunctionOpenModel;)V

    .line 232
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 235
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 237
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 240
    move-result p2

    .line 241
    iput p2, v5, Lec;->c:I

    .line 243
    invoke-static {}, Ll30;->g()Ll30;

    .line 246
    move-result-object p2

    .line 247
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 250
    goto/16 :goto_0

    .line 252
    :sswitch_6
    new-instance v4, Lml0;

    .line 254
    invoke-direct {v4}, Lml0;-><init>()V

    .line 257
    invoke-virtual {v4, p2}, Lec;->f(Ljava/lang/String;)V

    .line 260
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 262
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 265
    move-result p2

    .line 266
    iput p2, v4, Lec;->c:I

    .line 268
    invoke-static {}, Ll30;->g()Ll30;

    .line 271
    move-result-object p2

    .line 272
    invoke-virtual {p2, v4}, Ll30;->a(Lec;)V

    .line 275
    goto/16 :goto_0

    .line 277
    :sswitch_7
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 280
    move-result-object v4

    .line 281
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;

    .line 283
    invoke-static {v4, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 286
    move-result-object v4

    .line 287
    check-cast v4, Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;

    .line 289
    new-instance v5, Lx50;

    .line 291
    invoke-direct {v5, v4}, Lx50;-><init>(Lcom/autonavi/amapauto/protocol/model/service/ReqPhotoModel;)V

    .line 294
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 297
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 299
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 302
    move-result p2

    .line 303
    iput p2, v5, Lec;->c:I

    .line 305
    invoke-static {}, Ll30;->g()Ll30;

    .line 308
    move-result-object p2

    .line 309
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 312
    goto/16 :goto_0

    .line 314
    :sswitch_8
    new-instance v4, Lgt;

    .line 316
    invoke-direct {v4}, Lgt;-><init>()V

    .line 319
    invoke-virtual {v4, p2}, Lec;->f(Ljava/lang/String;)V

    .line 322
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 324
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 327
    move-result p2

    .line 328
    iput p2, v4, Lec;->c:I

    .line 330
    invoke-static {}, Ll30;->g()Ll30;

    .line 333
    move-result-object p2

    .line 334
    invoke-virtual {p2, v4}, Ll30;->a(Lec;)V

    .line 337
    goto/16 :goto_0

    .line 339
    :sswitch_9
    new-instance v4, Lof0;

    .line 341
    invoke-direct {v4}, Lof0;-><init>()V

    .line 344
    invoke-virtual {v4, p2}, Lec;->f(Ljava/lang/String;)V

    .line 347
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 349
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 352
    move-result p2

    .line 353
    iput p2, v4, Lec;->c:I

    .line 355
    invoke-static {}, Ll30;->g()Ll30;

    .line 358
    move-result-object p2

    .line 359
    invoke-virtual {p2, v4}, Ll30;->a(Lec;)V

    .line 362
    goto/16 :goto_0

    .line 364
    :sswitch_a
    invoke-static {p2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 367
    move-result-object v4

    .line 368
    const-class v5, Lcom/autonavi/amapauto/protocol/model/service/ReqGetVehicleStateModel;

    .line 370
    invoke-static {v4, v5}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 373
    move-result-object v4

    .line 374
    check-cast v4, Lcom/autonavi/amapauto/protocol/model/service/ReqGetVehicleStateModel;

    .line 376
    new-instance v5, Lfk0;

    .line 378
    invoke-direct {v5, v4}, Lfk0;-><init>(Lcom/autonavi/amapauto/protocol/model/service/ReqGetVehicleStateModel;)V

    .line 381
    invoke-virtual {v5, p2}, Lec;->f(Ljava/lang/String;)V

    .line 384
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 386
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 389
    move-result p2

    .line 390
    iput p2, v5, Lec;->c:I

    .line 392
    invoke-static {}, Ll30;->g()Ll30;

    .line 395
    move-result-object p2

    .line 396
    invoke-virtual {p2, v5}, Ll30;->a(Lec;)V

    .line 399
    goto/16 :goto_0

    .line 401
    :sswitch_b
    new-instance v4, Lla0;

    .line 403
    invoke-direct {v4}, Lla0;-><init>()V

    .line 406
    invoke-virtual {v4, p2}, Lec;->f(Ljava/lang/String;)V

    .line 409
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 411
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 414
    move-result p2

    .line 415
    iput p2, v4, Lec;->c:I

    .line 417
    invoke-static {}, Ll30;->g()Ll30;

    .line 420
    move-result-object p2

    .line 421
    invoke-virtual {p2, v4}, Ll30;->a(Lec;)V

    .line 424
    goto/16 :goto_0

    .line 426
    :sswitch_c
    new-instance v4, Lj5;

    .line 428
    invoke-direct {v4}, Lj5;-><init>()V

    .line 431
    invoke-virtual {v4, p2}, Lec;->f(Ljava/lang/String;)V

    .line 434
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 436
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 439
    move-result p2

    .line 440
    iput p2, v4, Lec;->c:I

    .line 442
    invoke-static {}, Ll30;->g()Ll30;

    .line 445
    move-result-object p2

    .line 446
    invoke-virtual {p2, v4}, Ll30;->a(Lec;)V

    .line 449
    goto/16 :goto_0

    .line 451
    :sswitch_d
    new-instance v4, Lca0;

    .line 453
    invoke-direct {v4}, Lca0;-><init>()V

    .line 456
    invoke-virtual {v4, p2}, Lec;->f(Ljava/lang/String;)V

    .line 459
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 461
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 464
    move-result p2

    .line 465
    iput p2, v4, Lec;->c:I

    .line 467
    invoke-static {}, Ll30;->g()Ll30;

    .line 470
    move-result-object p2

    .line 471
    invoke-virtual {p2, v4}, Ll30;->a(Lec;)V

    .line 474
    goto/16 :goto_0

    .line 476
    :sswitch_e
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->openBluetooth()V

    .line 479
    goto/16 :goto_0

    .line 481
    :sswitch_f
    new-instance v4, Loa0;

    .line 483
    invoke-direct {v4}, Loa0;-><init>()V

    .line 486
    invoke-virtual {v4, p2}, Lec;->f(Ljava/lang/String;)V

    .line 489
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 491
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 494
    move-result p2

    .line 495
    iput p2, v4, Lec;->c:I

    .line 497
    invoke-static {}, Ll30;->g()Ll30;

    .line 500
    move-result-object p2

    .line 501
    invoke-virtual {p2, v4}, Ll30;->a(Lec;)V

    .line 504
    goto/16 :goto_0

    .line 506
    :sswitch_10
    new-instance v4, Lfa0;

    .line 508
    invoke-direct {v4, v3}, Lfa0;-><init>(I)V

    .line 511
    invoke-virtual {v4, p2}, Lec;->f(Ljava/lang/String;)V

    .line 514
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 516
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 519
    move-result p2

    .line 520
    iput p2, v4, Lec;->c:I

    .line 522
    invoke-static {}, Ll30;->g()Ll30;

    .line 525
    move-result-object p2

    .line 526
    invoke-virtual {p2, v4}, Ll30;->a(Lec;)V

    .line 529
    goto/16 :goto_0

    .line 531
    :sswitch_11
    const-string v4, "sendRequestVehicleInfo"

    .line 533
    new-array v5, v3, [Ljava/lang/Object;

    .line 535
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    new-instance v4, Lqa0;

    .line 540
    invoke-direct {v4}, Lqa0;-><init>()V

    .line 543
    invoke-virtual {v4, p2}, Lec;->f(Ljava/lang/String;)V

    .line 546
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 548
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 551
    move-result p2

    .line 552
    iput p2, v4, Lec;->c:I

    .line 554
    invoke-static {}, Ll30;->g()Ll30;

    .line 557
    move-result-object p2

    .line 558
    invoke-virtual {p2, v4}, Ll30;->a(Lec;)V

    .line 561
    goto :goto_0

    .line 562
    :sswitch_12
    const-string p2, "[getUnionUserInfo]"

    .line 564
    new-array v4, v3, [Ljava/lang/Object;

    .line 566
    invoke-static {v2, p2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    invoke-static {}, Ly70;->b()Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 572
    move-result-object p2

    .line 573
    invoke-static {p2}, Ly70;->h(Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;)Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;

    .line 576
    move-result-object p2

    .line 577
    if-nez p2, :cond_1

    .line 579
    new-instance p2, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;

    .line 581
    const-string v5, ""

    .line 583
    const-string v6, ""

    .line 585
    const/4 v7, 0x1

    .line 586
    const-string v8, ""

    .line 588
    const-string v9, ""

    .line 590
    const-string v10, ""

    .line 592
    move-object v4, p2

    .line 593
    invoke-direct/range {v4 .. v10}, Lcom/autonavi/amapauto/protocol/model/client/user/UnionLoginUserInfoModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_1
    const/4 v4, -0x1

    .line 597
    invoke-static {p2, v4}, Lfw;->b(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;I)V

    .line 600
    goto :goto_0

    .line 601
    :sswitch_13
    new-instance v4, Lde;

    .line 603
    invoke-direct {v4}, Lde;-><init>()V

    .line 606
    invoke-virtual {v4, p2}, Lec;->f(Ljava/lang/String;)V

    .line 609
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 611
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 614
    move-result p2

    .line 615
    iput p2, v4, Lec;->c:I

    .line 617
    invoke-static {}, Ll30;->g()Ll30;

    .line 620
    move-result-object p2

    .line 621
    invoke-virtual {p2, v4}, Ll30;->a(Lec;)V

    .line 624
    goto :goto_0

    .line 625
    :sswitch_14
    new-instance v4, Lea0;

    .line 627
    invoke-direct {v4}, Lea0;-><init>()V

    .line 630
    invoke-virtual {v4, p2}, Lec;->f(Ljava/lang/String;)V

    .line 633
    iget-object p2, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->requestCode:Ljava/lang/String;

    .line 635
    invoke-static {p2, v3}, Lah;->k(Ljava/lang/String;I)I

    .line 638
    move-result p2

    .line 639
    iput p2, v4, Lec;->c:I

    .line 641
    invoke-static {}, Ll30;->g()Ll30;

    .line 644
    move-result-object p2

    .line 645
    invoke-virtual {p2, v4}, Ll30;->a(Lec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    goto :goto_0

    .line 649
    :catch_0
    move-exception p2

    .line 650
    new-array v1, v1, [Ljava/lang/Object;

    .line 652
    iget p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->protocolId:I

    .line 654
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 657
    move-result-object p1

    .line 658
    aput-object p1, v1, v3

    .line 660
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 663
    move-result-object p1

    .line 664
    aput-object p1, v1, v0

    .line 666
    const-string p1, "distributeRequest ProtocolId = {?} exception:{?}"

    .line 668
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    :goto_0
    return-void

    .line 672
    :cond_2
    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 674
    aput-object p1, v1, v3

    .line 676
    aput-object p2, v1, v0

    .line 678
    const-string p1, "distributeRequest header:{?} jsonString:{?}"

    .line 680
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    return-void

    .line 684
    nop

    .line 685
    :sswitch_data_0
    .sparse-switch
        0x753e -> :sswitch_14
        0x76e1 -> :sswitch_13
        0x772a -> :sswitch_12
        0x778d -> :sswitch_11
        0x778e -> :sswitch_10
        0x78b4 -> :sswitch_f
        0x13881 -> :sswitch_e
        0x1388a -> :sswitch_d
        0x13895 -> :sswitch_c
        0x138a6 -> :sswitch_b
        0x138a9 -> :sswitch_a
        0x138b8 -> :sswitch_9
        0x138cb -> :sswitch_8
        0x138d4 -> :sswitch_7
        0x138d7 -> :sswitch_6
        0x138fc -> :sswitch_5
        0x1390c -> :sswitch_4
        0x13913 -> :sswitch_3
        0x1392a -> :sswitch_2
        0x13937 -> :sswitch_1
        0x1393a -> :sswitch_0
    .end sparse-switch
.end method

.method public final e(Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonResult:Lcom/autonavi/amapauto/jni/protocol/data/JsonResult;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    const-string p1, "distributeResponse jsonResult is null"

    .line 8
    new-array v0, v1, [Ljava/lang/Object;

    .line 10
    const-string v1, "ProtocolDistributeManager"

    .line 12
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 18
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;-><init>()V

    .line 21
    const/4 v2, 0x1

    .line 22
    iput-boolean v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 24
    iget-object v3, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonData:Ljava/lang/String;

    .line 26
    iput-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 28
    iget-object v3, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonResult:Lcom/autonavi/amapauto/jni/protocol/data/JsonResult;

    .line 30
    iget v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/JsonResult;->resultCode:I

    .line 32
    const/16 v4, 0x2710

    .line 34
    if-ne v3, v4, :cond_1

    .line 36
    const/4 v1, 0x1

    .line 37
    :cond_1
    iput-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 39
    iget p1, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->requestId:I

    .line 41
    iput p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->requestALId:I

    .line 43
    iput v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 45
    invoke-static {}, Ll30;->g()Ll30;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, v0}, Ll30;->n(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public final g(Ljava/lang/String;I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "ProtocolDistributeManager"

    .line 9
    const-string v4, "sendGalCI(). jsonData = {?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-instance v1, Landroid/content/Intent;

    .line 16
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 19
    const-string v4, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 21
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    const-string v4, "KEY_TYPE"

    .line 26
    const v5, 0x1869f

    .line 29
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const-string v4, "KEY_PROCESS_DATA"

    .line 34
    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string p1, "KEY_REQUEST_CODE"

    .line 39
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    new-array p1, v0, [Ljava/lang/Object;

    .line 44
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    aput-object p2, p1, v2

    .line 54
    const-string p2, "galtest sendGalCI intent:{?}"

    .line 56
    invoke-static {v3, p2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-static {}, Lrv;->H()Lrv;

    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public h(Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;)V
    .locals 4

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iput-object p1, p0, Lv70;->b:Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    const-string v1, "ProtocolDistributeManager"

    .line 10
    if-nez p1, :cond_1

    .line 12
    const-string p1, "sendToAutoClient inParam is null"

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    return-void

    .line 20
    :cond_1
    const/4 v2, 0x3

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    iget-object v3, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonData:Ljava/lang/String;

    .line 25
    aput-object v3, v2, v0

    .line 27
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 29
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->toJsonString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const/4 v3, 0x1

    .line 34
    aput-object v0, v2, v3

    .line 36
    iget v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->requestId:I

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v0

    .line 42
    const/4 v3, 0x2

    .line 43
    aput-object v0, v2, v3

    .line 45
    const-string v0, "galtest sendToHmi  req_process_data:{?} json_header:{?} requestId:{?}"

    .line 47
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Li;->b()Z

    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 56
    sget-boolean v0, Li;->a:Z

    .line 58
    if-eqz v0, :cond_3

    .line 60
    :cond_2
    iget-object v0, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonData:Ljava/lang/String;

    .line 62
    iget v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->requestId:I

    .line 64
    invoke-virtual {p0, v0, v1}, Lv70;->g(Ljava/lang/String;I)V

    .line 67
    :cond_3
    invoke-static {}, Lu70;->a()Lzs;

    .line 70
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeRecvJsonAsync(Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;)V

    .line 73
    return-void
.end method
