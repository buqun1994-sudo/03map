.class public Lm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm2$b;
    }
.end annotation


# instance fields
.field public a:Lt10;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lt10;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lt10;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lm2;->a:Lt10;

    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lnc;
    .locals 0

    .line 1
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;

    .line 3
    invoke-virtual {p0, p1}, Lm2;->c(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)Lnc;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public b(Lnc;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lnc;->h()I

    .line 11
    move-result v2

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v2, v1, v3

    .line 19
    iget-boolean v2, p1, Lnc;->c:Z

    .line 21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object v2

    .line 25
    const/4 v4, 0x1

    .line 26
    aput-object v2, v1, v4

    .line 28
    const-string v2, "[Protocol] AidlModelDataHandle"

    .line 30
    const-string v4, "AidlModelConnection convertDataToClient actionId:{?} isSuccessed:{?}"

    .line 32
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    instance-of v1, p1, Lo2;

    .line 37
    if-eqz v1, :cond_1

    .line 39
    move-object v0, p1

    .line 40
    check-cast v0, Lo2;

    .line 42
    invoke-interface {v0}, Lo2;->b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 45
    move-result-object v0

    .line 46
    :cond_1
    if-eqz v0, :cond_3

    .line 48
    :try_start_0
    iget-object v1, p1, Lnc;->b:Ljava/lang/Object;

    .line 50
    check-cast v1, Lm2$b;

    .line 52
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 55
    move-result v4

    .line 56
    if-gtz v4, :cond_2

    .line 58
    invoke-virtual {p1}, Lnc;->h()I

    .line 61
    move-result p1

    .line 62
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    .line 65
    :cond_2
    iget p1, v1, Lm2$b;->b:I

    .line 67
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 70
    iget-object p1, v1, Lm2$b;->d:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 75
    iget-object p1, v1, Lm2$b;->e:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 80
    iget-wide v4, v1, Lm2$b;->a:J

    .line 82
    invoke-virtual {v0, v4, v5}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    new-array v3, v3, [Ljava/lang/Object;

    .line 93
    invoke-static {v2, v1, p1, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 96
    :cond_3
    :goto_0
    return-object v0
.end method

.method public c(Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;)Lnc;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolModel;->s()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x1

    .line 11
    const-string v3, "[Protocol] AidlModelDataHandle"

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz p1, :cond_b

    .line 16
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 19
    move-result v5

    .line 20
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->toJsonObject()Lorg/json/JSONObject;

    .line 27
    move-result-object v7

    .line 28
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 31
    move-result-object v7

    .line 32
    const/4 v8, 0x3

    .line 33
    new-array v8, v8, [Ljava/lang/Object;

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v9

    .line 39
    aput-object v9, v8, v4

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    move-result-object v9

    .line 45
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 48
    move-result-object v9

    .line 49
    aput-object v9, v8, v2

    .line 51
    aput-object v7, v8, v1

    .line 53
    const-string v9, "AidlModelConnection#handleProtocolModelData#protocolID={?}#{?}#{?}"

    .line 55
    invoke-static {v3, v9, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-static {}, Lrh;->d()Lrh;

    .line 61
    move-result-object v8

    .line 62
    invoke-virtual {v8}, Lrh;->b()Ll2;

    .line 65
    move-result-object v8

    .line 66
    invoke-virtual {v8, v6}, Lp;->b(Ljava/lang/String;)Z

    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_3

    .line 72
    new-array v6, v2, [Ljava/lang/Object;

    .line 74
    aput-object v7, v6, v4

    .line 76
    const-string v8, "[ALSimulate] simulateDataForAidlModel = {?}"

    .line 78
    invoke-static {v3, v8, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lr70;->e()Z

    .line 84
    move-result v6

    .line 85
    const-string v8, ""

    .line 87
    if-eqz v6, :cond_2

    .line 89
    iget-object v6, p0, Lm2;->a:Lt10;

    .line 91
    invoke-virtual {v6, v5}, Lq70;->k(I)Ls10;

    .line 94
    move-result-object v6

    .line 95
    if-eqz v6, :cond_1

    .line 97
    iget-object v9, p0, Lm2;->a:Lt10;

    .line 99
    invoke-virtual {v6}, Ls10;->a()Ljava/lang/Class;

    .line 102
    move-result-object v10

    .line 103
    invoke-virtual {v9, v10}, Lq70;->l(Ljava/lang/Class;)V

    .line 106
    iget-object v9, p0, Lm2;->a:Lt10;

    .line 108
    invoke-virtual {v6}, Ls10;->b()Ljava/lang/String;

    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v9, v6}, Lq70;->m(Ljava/lang/String;)V

    .line 115
    :cond_1
    iget-object v6, p0, Lm2;->a:Lt10;

    .line 117
    new-instance v9, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v9

    .line 132
    const-string v10, "202012101229"

    .line 134
    invoke-virtual {v6, v7, v9, v10}, Lt10;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 137
    iget-object v6, p0, Lm2;->a:Lt10;

    .line 139
    invoke-virtual {v6}, Lq70;->b()V

    .line 142
    goto :goto_0

    .line 143
    :cond_2
    const-string v6, "[ALSimulate] isProtocolDebugOpen = false"

    .line 145
    new-array v9, v4, [Ljava/lang/Object;

    .line 147
    invoke-static {v3, v6, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :goto_0
    :try_start_0
    const-string v6, "UTF-8"

    .line 152
    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 155
    move-result-object v6

    .line 156
    invoke-static {v6, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 159
    move-result-object v7

    .line 160
    const-string v6, "[ALSimulate] base64 encode simulateData = {?}"

    .line 162
    new-array v9, v2, [Ljava/lang/Object;

    .line 164
    aput-object v7, v9, v4

    .line 166
    invoke-static {v3, v6, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_1

    .line 170
    :catch_0
    move-exception v6

    .line 171
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 174
    move-result-object v6

    .line 175
    new-array v9, v4, [Ljava/lang/Object;

    .line 177
    invoke-static {v3, v6, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 182
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v6

    .line 195
    invoke-static {v2, v7, v6}, Lzd0;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 198
    goto :goto_2

    .line 199
    :cond_3
    const-string v6, "[ALSimulate] simulateDataForAidlModel isNeedCollection == false"

    .line 201
    new-array v7, v4, [Ljava/lang/Object;

    .line 203
    invoke-static {v3, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    :goto_2
    const/16 v6, 0x753f

    .line 208
    if-eq v5, v6, :cond_a

    .line 210
    const/16 v6, 0x7540

    .line 212
    if-eq v5, v6, :cond_9

    .line 214
    const/16 v6, 0x76d3

    .line 216
    if-eq v5, v6, :cond_8

    .line 218
    const/16 v6, 0x76d4

    .line 220
    if-eq v5, v6, :cond_7

    .line 222
    const/16 v6, 0x76df

    .line 224
    if-eq v5, v6, :cond_6

    .line 226
    const/16 v6, 0x76e0

    .line 228
    if-eq v5, v6, :cond_5

    .line 230
    packed-switch v5, :pswitch_data_0

    .line 233
    packed-switch v5, :pswitch_data_1

    .line 236
    packed-switch v5, :pswitch_data_2

    .line 239
    sparse-switch v5, :sswitch_data_0

    .line 242
    packed-switch v5, :pswitch_data_3

    .line 245
    packed-switch v5, :pswitch_data_4

    .line 248
    packed-switch v5, :pswitch_data_5

    .line 251
    goto/16 :goto_3

    .line 253
    :pswitch_0
    move-object v6, p1

    .line 254
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;

    .line 256
    new-instance v7, Lxz;

    .line 258
    invoke-direct {v7, v6}, Lxz;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;)V

    .line 261
    goto/16 :goto_4

    .line 263
    :pswitch_1
    move-object v6, p1

    .line 264
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/user/ReqOpenSavesModel;

    .line 266
    new-instance v7, La50;

    .line 268
    invoke-direct {v7, v6}, La50;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/ReqOpenSavesModel;)V

    .line 271
    goto/16 :goto_4

    .line 273
    :pswitch_2
    move-object v6, p1

    .line 274
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqMinimizeAutoModel;

    .line 276
    new-instance v7, Ldo;

    .line 278
    invoke-direct {v7, v6}, Ldo;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqMinimizeAutoModel;)V

    .line 281
    goto/16 :goto_4

    .line 283
    :pswitch_3
    move-object v6, p1

    .line 284
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;

    .line 286
    new-instance v7, Lfl;

    .line 288
    invoke-direct {v7, v6}, Lfl;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;)V

    .line 291
    goto/16 :goto_4

    .line 293
    :pswitch_4
    move-object v6, p1

    .line 294
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqEnterAutoModel;

    .line 296
    new-instance v7, Lww;

    .line 298
    invoke-direct {v7, v6}, Lww;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqEnterAutoModel;)V

    .line 301
    goto/16 :goto_4

    .line 303
    :pswitch_5
    move-object v6, p1

    .line 304
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqRestoreDefaultSettingsModel;

    .line 306
    new-instance v7, Ltl;

    .line 308
    invoke-direct {v7, v6}, Ltl;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqRestoreDefaultSettingsModel;)V

    .line 311
    goto/16 :goto_4

    .line 313
    :pswitch_6
    move-object v6, p1

    .line 314
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;

    .line 316
    new-instance v7, Lrl;

    .line 318
    invoke-direct {v7, v6}, Lrl;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;)V

    .line 321
    goto/16 :goto_4

    .line 323
    :pswitch_7
    move-object v6, p1

    .line 324
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    .line 326
    new-instance v7, Lu60;

    .line 328
    invoke-direct {v7, v6}, Lu60;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;)V

    .line 331
    goto/16 :goto_4

    .line 333
    :pswitch_8
    move-object v6, p1

    .line 334
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqCarChargeStateNotifyModel;

    .line 336
    new-instance v7, Lte;

    .line 338
    invoke-direct {v7, v6}, Lte;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqCarChargeStateNotifyModel;)V

    .line 341
    goto/16 :goto_4

    .line 343
    :pswitch_9
    move-object v6, p1

    .line 344
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqDrivingModeChangeNotifyModel;

    .line 346
    new-instance v7, Llk;

    .line 348
    invoke-direct {v7, v6}, Llk;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqDrivingModeChangeNotifyModel;)V

    .line 351
    goto/16 :goto_4

    .line 353
    :pswitch_a
    move-object v6, p1

    .line 354
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;

    .line 356
    new-instance v7, Lv60;

    .line 358
    invoke-direct {v7, v6}, Lv60;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;)V

    .line 361
    goto/16 :goto_4

    .line 363
    :pswitch_b
    move-object v6, p1

    .line 364
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryLastMapStatusModel;

    .line 366
    new-instance v7, Ltw;

    .line 368
    invoke-direct {v7, v6}, Ltw;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqQueryLastMapStatusModel;)V

    .line 371
    goto/16 :goto_4

    .line 373
    :pswitch_c
    move-object v6, p1

    .line 374
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryDayNightModeModel;

    .line 376
    new-instance v7, Lga0;

    .line 378
    invoke-direct {v7, v6}, Lga0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqQueryDayNightModeModel;)V

    .line 381
    goto/16 :goto_4

    .line 383
    :pswitch_d
    move-object v6, p1

    .line 384
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingDayNightModeModel;

    .line 386
    new-instance v7, Lxh;

    .line 388
    invoke-direct {v7, v6}, Lxh;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSettingDayNightModeModel;)V

    .line 391
    goto/16 :goto_4

    .line 393
    :pswitch_e
    move-object v6, p1

    .line 394
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;

    .line 396
    new-instance v7, Lkc0;

    .line 398
    invoke-direct {v7, v6}, Lkc0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;)V

    .line 401
    goto/16 :goto_4

    .line 403
    :sswitch_0
    move-object v6, p1

    .line 404
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;

    .line 406
    new-instance v7, Llk0;

    .line 408
    invoke-direct {v7, v6}, Llk0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/common/ProtocolVersionModel;)V

    .line 411
    goto/16 :goto_4

    .line 413
    :sswitch_1
    move-object v6, p1

    .line 414
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqRevealingChargingStaInfoModel;

    .line 416
    new-instance v7, Lbb0;

    .line 418
    invoke-direct {v7, v6}, Lbb0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqRevealingChargingStaInfoModel;)V

    .line 421
    goto/16 :goto_4

    .line 423
    :sswitch_2
    move-object v6, p1

    .line 424
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqControlTouchBeepModel;

    .line 426
    new-instance v7, Lyg;

    .line 428
    invoke-direct {v7, v6}, Lyg;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqControlTouchBeepModel;)V

    .line 431
    goto/16 :goto_4

    .line 433
    :sswitch_3
    move-object v6, p1

    .line 434
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;

    .line 436
    new-instance v7, Lid0;

    .line 438
    invoke-direct {v7, v6}, Lid0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;)V

    .line 441
    goto/16 :goto_4

    .line 443
    :sswitch_4
    move-object v6, p1

    .line 444
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqArrivePOIResidualEnegryModel;

    .line 446
    new-instance v7, Ld6;

    .line 448
    invoke-direct {v7, v6}, Ld6;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqArrivePOIResidualEnegryModel;)V

    .line 451
    goto/16 :goto_4

    .line 453
    :sswitch_5
    move-object v6, p1

    .line 454
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;

    .line 456
    new-instance v7, Ljj0;

    .line 458
    invoke-direct {v7, v6}, Ljj0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;)V

    .line 461
    goto/16 :goto_4

    .line 463
    :sswitch_6
    move-object v6, p1

    .line 464
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;

    .line 466
    new-instance v7, Lk;

    .line 468
    invoke-direct {v7, v6}, Lk;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;)V

    .line 471
    goto/16 :goto_4

    .line 473
    :sswitch_7
    move-object v6, p1

    .line 474
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;

    .line 476
    new-instance v7, Ll;

    .line 478
    invoke-direct {v7, v6}, Ll;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;)V

    .line 481
    goto/16 :goto_4

    .line 483
    :sswitch_8
    move-object v6, p1

    .line 484
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    .line 486
    new-instance v7, Lyn;

    .line 488
    invoke-direct {v7, v6}, Lyn;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;)V

    .line 491
    goto/16 :goto_4

    .line 493
    :sswitch_9
    move-object v6, p1

    .line 494
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqGetCityRestrictionModel;

    .line 496
    new-instance v7, Lln;

    .line 498
    invoke-direct {v7, v6}, Lln;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqGetCityRestrictionModel;)V

    .line 501
    goto/16 :goto_4

    .line 503
    :sswitch_a
    move-object v6, p1

    .line 504
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqGetODDInfoModel;

    .line 506
    new-instance v7, Ltn;

    .line 508
    invoke-direct {v7, v6}, Ltn;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqGetODDInfoModel;)V

    .line 511
    goto/16 :goto_4

    .line 513
    :sswitch_b
    move-object v6, p1

    .line 514
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqNaviPreferSetModel;

    .line 516
    new-instance v7, Lp20;

    .line 518
    invoke-direct {v7, v6}, Lp20;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqNaviPreferSetModel;)V

    .line 521
    goto/16 :goto_4

    .line 523
    :sswitch_c
    move-object v6, p1

    .line 524
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqOpenNaviFuncModel;

    .line 526
    new-instance v7, Lb50;

    .line 528
    invoke-direct {v7, v6}, Lb50;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqOpenNaviFuncModel;)V

    .line 531
    goto/16 :goto_4

    .line 533
    :sswitch_d
    move-object v6, p1

    .line 534
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVRKeywordsModel;

    .line 536
    new-instance v7, Lp40;

    .line 538
    invoke-direct {v7, v6}, Lp40;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVRKeywordsModel;)V

    .line 541
    goto/16 :goto_4

    .line 543
    :sswitch_e
    move-object v6, p1

    .line 544
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqSetNaviFuncModel;

    .line 546
    new-instance v7, Led0;

    .line 548
    invoke-direct {v7, v6}, Led0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSetNaviFuncModel;)V

    .line 551
    goto/16 :goto_4

    .line 553
    :sswitch_f
    move-object v6, p1

    .line 554
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqNaviFunctionCheckModel;

    .line 556
    new-instance v7, Ll20;

    .line 558
    invoke-direct {v7, v6}, Ll20;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqNaviFunctionCheckModel;)V

    .line 561
    goto/16 :goto_4

    .line 563
    :sswitch_10
    move-object v6, p1

    .line 564
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqMapDownloadModel;

    .line 566
    new-instance v7, Ltz;

    .line 568
    invoke-direct {v7, v6}, Ltz;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqMapDownloadModel;)V

    .line 571
    goto/16 :goto_4

    .line 573
    :sswitch_11
    move-object v6, p1

    .line 574
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqGetRouteContinueInfoModel;

    .line 576
    new-instance v7, Lwn;

    .line 578
    invoke-direct {v7, v6}, Lwn;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqGetRouteContinueInfoModel;)V

    .line 581
    goto/16 :goto_4

    .line 583
    :sswitch_12
    move-object v6, p1

    .line 584
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchNavInfoModel;

    .line 586
    new-instance v7, Lhc0;

    .line 588
    invoke-direct {v7, v6}, Lhc0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSearchNavInfoModel;)V

    .line 591
    goto/16 :goto_4

    .line 593
    :sswitch_13
    move-object v6, p1

    .line 594
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchAlongBySpecialPointModel;

    .line 596
    new-instance v7, Lfc0;

    .line 598
    invoke-direct {v7, v6}, Lfc0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSearchAlongBySpecialPointModel;)V

    .line 601
    goto/16 :goto_4

    .line 603
    :sswitch_14
    move-object v6, p1

    .line 604
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqGeoDecodeModel;

    .line 606
    new-instance v7, Lhn;

    .line 608
    invoke-direct {v7, v6}, Lhn;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqGeoDecodeModel;)V

    .line 611
    goto/16 :goto_4

    .line 613
    :sswitch_15
    move-object v6, p1

    .line 614
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqGetMapOperateResultModel;

    .line 616
    new-instance v7, Lrn;

    .line 618
    invoke-direct {v7, v6}, Lrn;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqGetMapOperateResultModel;)V

    .line 621
    goto/16 :goto_4

    .line 623
    :sswitch_16
    move-object v6, p1

    .line 624
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteChangeModel;

    .line 626
    new-instance v7, Leb0;

    .line 628
    invoke-direct {v7, v6}, Leb0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqRouteChangeModel;)V

    .line 631
    goto/16 :goto_4

    .line 633
    :sswitch_17
    move-object v6, p1

    .line 634
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqFuncConfigLoadingStatusModel;

    .line 636
    new-instance v7, Lan;

    .line 638
    invoke-direct {v7, v6}, Lan;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqFuncConfigLoadingStatusModel;)V

    .line 641
    goto/16 :goto_4

    .line 643
    :sswitch_18
    move-object v6, p1

    .line 644
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;

    .line 646
    new-instance v7, Ljo;

    .line 648
    invoke-direct {v7, v6}, Ljo;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;)V

    .line 651
    goto/16 :goto_4

    .line 653
    :sswitch_19
    move-object v6, p1

    .line 654
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqGetPlateNumberFromAutoModel;

    .line 656
    new-instance v7, Lvn;

    .line 658
    invoke-direct {v7, v6}, Lvn;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqGetPlateNumberFromAutoModel;)V

    .line 661
    goto/16 :goto_4

    .line 663
    :sswitch_1a
    move-object v6, p1

    .line 664
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqGetManufactureInfoFromAutoModel;

    .line 666
    new-instance v7, Lpn;

    .line 668
    invoke-direct {v7, v6}, Lpn;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqGetManufactureInfoFromAutoModel;)V

    .line 671
    goto/16 :goto_4

    .line 673
    :sswitch_1b
    move-object v6, p1

    .line 674
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspGetManufactureInfoModel;

    .line 676
    new-instance v7, Lnn;

    .line 678
    invoke-direct {v7, v6}, Lnn;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspGetManufactureInfoModel;)V

    .line 681
    goto/16 :goto_4

    .line 683
    :sswitch_1c
    move-object v6, p1

    .line 684
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;

    .line 686
    new-instance v7, Lao;

    .line 688
    invoke-direct {v7, v6}, Lao;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;)V

    .line 691
    goto/16 :goto_4

    .line 693
    :sswitch_1d
    move-object v6, p1

    .line 694
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqGetAccountInfoFromAutoModel;

    .line 696
    new-instance v7, Lkn;

    .line 698
    invoke-direct {v7, v6}, Lkn;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqGetAccountInfoFromAutoModel;)V

    .line 701
    goto/16 :goto_4

    .line 703
    :sswitch_1e
    move-object v6, p1

    .line 704
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;

    .line 706
    new-instance v7, Lin;

    .line 708
    invoke-direct {v7, v6}, Lin;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;)V

    .line 711
    goto/16 :goto_4

    .line 713
    :sswitch_1f
    move-object v6, p1

    .line 714
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqNewQuerySavesModel;

    .line 716
    new-instance v7, Lm30;

    .line 718
    invoke-direct {v7, v6}, Lm30;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqNewQuerySavesModel;)V

    .line 721
    goto/16 :goto_4

    .line 723
    :sswitch_20
    move-object v6, p1

    .line 724
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqNewMidPOIsInfoNotifyModel;

    .line 726
    new-instance v7, Lj30;

    .line 728
    invoke-direct {v7, v6}, Lj30;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqNewMidPOIsInfoNotifyModel;)V

    .line 731
    goto/16 :goto_4

    .line 733
    :sswitch_21
    move-object v6, p1

    .line 734
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    .line 736
    new-instance v7, Lrf0;

    .line 738
    invoke-direct {v7, v6}, Lrf0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;)V

    .line 741
    goto/16 :goto_4

    .line 743
    :sswitch_22
    move-object v6, p1

    .line 744
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;

    .line 746
    new-instance v7, Li30;

    .line 748
    invoke-direct {v7, v6}, Li30;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;)V

    .line 751
    goto/16 :goto_4

    .line 753
    :sswitch_23
    move-object v6, p1

    .line 754
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;

    .line 756
    new-instance v7, Lbd;

    .line 758
    invoke-direct {v7, v6}, Lbd;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;)V

    .line 761
    goto/16 :goto_4

    .line 763
    :sswitch_24
    move-object v6, p1

    .line 764
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqAutoUpdateRollBackModel;

    .line 766
    new-instance v7, Lhb;

    .line 768
    invoke-direct {v7, v6}, Lhb;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqAutoUpdateRollBackModel;)V

    .line 771
    goto/16 :goto_4

    .line 773
    :sswitch_25
    move-object v6, p1

    .line 774
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;

    .line 776
    new-instance v7, Lp50;

    .line 778
    invoke-direct {v7, v6}, Lp50;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;)V

    .line 781
    goto/16 :goto_4

    .line 783
    :sswitch_26
    move-object v6, p1

    .line 784
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;

    .line 786
    new-instance v7, Ltf;

    .line 788
    invoke-direct {v7, v6}, Ltf;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;)V

    .line 791
    goto/16 :goto_4

    .line 793
    :sswitch_27
    move-object v6, p1

    .line 794
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;

    .line 796
    new-instance v7, Lwe;

    .line 798
    invoke-direct {v7, v6}, Lwe;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;)V

    .line 801
    goto/16 :goto_4

    .line 803
    :sswitch_28
    move-object v6, p1

    .line 804
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspIsNOAFunctionOpenModel;

    .line 806
    new-instance v7, Lhv;

    .line 808
    invoke-direct {v7, v6}, Lhv;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspIsNOAFunctionOpenModel;)V

    .line 811
    goto/16 :goto_4

    .line 813
    :sswitch_29
    move-object v6, p1

    .line 814
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;

    .line 816
    new-instance v7, Lr5;

    .line 818
    invoke-direct {v7, v6}, Lr5;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;)V

    .line 821
    goto/16 :goto_4

    .line 823
    :sswitch_2a
    move-object v6, p1

    .line 824
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqNetworkPositionSwitchModel;

    .line 826
    new-instance v7, Lsy;

    .line 828
    invoke-direct {v7, v6}, Lsy;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqNetworkPositionSwitchModel;)V

    .line 831
    goto/16 :goto_4

    .line 833
    :sswitch_2b
    move-object v6, p1

    .line 834
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;

    .line 836
    new-instance v7, Lma0;

    .line 838
    invoke-direct {v7, v6}, Lma0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;)V

    .line 841
    goto/16 :goto_4

    .line 843
    :sswitch_2c
    move-object v6, p1

    .line 844
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;

    .line 846
    new-instance v7, Ley;

    .line 848
    invoke-direct {v7, v6}, Ley;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;)V

    .line 851
    goto/16 :goto_4

    .line 853
    :sswitch_2d
    move-object v6, p1

    .line 854
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    .line 856
    new-instance v7, Lml;

    .line 858
    invoke-direct {v7, v6}, Lml;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;)V

    .line 861
    goto/16 :goto_4

    .line 863
    :sswitch_2e
    move-object v6, p1

    .line 864
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;

    .line 866
    new-instance v7, Lll;

    .line 868
    invoke-direct {v7, v6}, Lll;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;)V

    .line 871
    goto/16 :goto_4

    .line 873
    :sswitch_2f
    move-object v6, p1

    .line 874
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;

    .line 876
    new-instance v7, Lxd0;

    .line 878
    invoke-direct {v7, v6}, Lxd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;)V

    .line 881
    goto/16 :goto_4

    .line 883
    :sswitch_30
    move-object v6, p1

    .line 884
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;

    .line 886
    new-instance v7, Lie;

    .line 888
    invoke-direct {v7, v6}, Lie;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;)V

    .line 891
    goto/16 :goto_4

    .line 893
    :sswitch_31
    move-object v6, p1

    .line 894
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;

    .line 896
    new-instance v7, Lpl;

    .line 898
    invoke-direct {v7, v6}, Lpl;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;)V

    .line 901
    goto/16 :goto_4

    .line 903
    :sswitch_32
    move-object v6, p1

    .line 904
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;

    .line 906
    new-instance v7, Lnl;

    .line 908
    invoke-direct {v7, v6}, Lnl;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;)V

    .line 911
    goto/16 :goto_4

    .line 913
    :sswitch_33
    move-object v6, p1

    .line 914
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;

    .line 916
    new-instance v7, Lze;

    .line 918
    invoke-direct {v7, v6}, Lze;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;)V

    .line 921
    goto/16 :goto_4

    .line 923
    :sswitch_34
    move-object v6, p1

    .line 924
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficRestrictQueryModel;

    .line 926
    new-instance v7, Lzh0;

    .line 928
    invoke-direct {v7, v6}, Lzh0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficRestrictQueryModel;)V

    .line 931
    goto/16 :goto_4

    .line 933
    :sswitch_35
    move-object v6, p1

    .line 934
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;

    .line 936
    new-instance v7, Lx10;

    .line 938
    invoke-direct {v7, v6}, Lx10;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;)V

    .line 941
    goto/16 :goto_4

    .line 943
    :sswitch_36
    move-object v6, p1

    .line 944
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;

    .line 946
    new-instance v7, Lwc0;

    .line 948
    invoke-direct {v7, v6}, Lwc0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;)V

    .line 951
    goto/16 :goto_4

    .line 953
    :sswitch_37
    move-object v6, p1

    .line 954
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;

    .line 956
    new-instance v7, Lw;

    .line 958
    invoke-direct {v7, v6}, Lw;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;)V

    .line 961
    goto/16 :goto_4

    .line 963
    :sswitch_38
    move-object v6, p1

    .line 964
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;

    .line 966
    new-instance v7, Lll0;

    .line 968
    invoke-direct {v7, v6}, Lll0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;)V

    .line 971
    goto/16 :goto_4

    .line 973
    :sswitch_39
    move-object v6, p1

    .line 974
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;

    .line 976
    new-instance v7, Lkd0;

    .line 978
    invoke-direct {v7, v6}, Lkd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;)V

    .line 981
    goto/16 :goto_4

    .line 983
    :sswitch_3a
    move-object v6, p1

    .line 984
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;

    .line 986
    new-instance v7, Lgd0;

    .line 988
    invoke-direct {v7, v6}, Lgd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;)V

    .line 991
    goto/16 :goto_4

    .line 993
    :sswitch_3b
    move-object v6, p1

    .line 994
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqRepeatBroadcastModel;

    .line 996
    new-instance v7, Lba0;

    .line 998
    invoke-direct {v7, v6}, Lba0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqRepeatBroadcastModel;)V

    .line 1001
    goto/16 :goto_4

    .line 1003
    :sswitch_3c
    move-object v6, p1

    .line 1004
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;

    .line 1006
    new-instance v7, Ld60;

    .line 1008
    invoke-direct {v7, v6}, Ld60;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;)V

    .line 1011
    goto/16 :goto_4

    .line 1013
    :sswitch_3d
    move-object v6, p1

    .line 1014
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqNoticeOperateModel;

    .line 1016
    new-instance v7, Le50;

    .line 1018
    invoke-direct {v7, v6}, Le50;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqNoticeOperateModel;)V

    .line 1021
    goto/16 :goto_4

    .line 1023
    :sswitch_3e
    move-object v6, p1

    .line 1024
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqSoftwareInfoQueryModel;

    .line 1026
    new-instance v7, Lbo;

    .line 1028
    invoke-direct {v7, v6}, Lbo;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSoftwareInfoQueryModel;)V

    .line 1031
    goto/16 :goto_4

    .line 1033
    :sswitch_3f
    move-object v6, p1

    .line 1034
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;

    .line 1036
    new-instance v7, Lxe0;

    .line 1038
    invoke-direct {v7, v6}, Lxe0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;)V

    .line 1041
    goto/16 :goto_4

    .line 1043
    :sswitch_40
    move-object v6, p1

    .line 1044
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;

    .line 1046
    new-instance v7, Ltl0;

    .line 1048
    invoke-direct {v7, v6}, Ltl0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;)V

    .line 1051
    goto/16 :goto_4

    .line 1053
    :sswitch_41
    move-object v6, p1

    .line 1054
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

    .line 1056
    new-instance v7, Lhb0;

    .line 1058
    invoke-direct {v7, v6}, Lhb0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;)V

    .line 1061
    goto/16 :goto_4

    .line 1063
    :sswitch_42
    move-object v6, p1

    .line 1064
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;

    .line 1066
    new-instance v7, Lft;

    .line 1068
    invoke-direct {v7, v6}, Lft;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;)V

    .line 1071
    goto/16 :goto_4

    .line 1073
    :sswitch_43
    move-object v6, p1

    .line 1074
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;

    .line 1076
    new-instance v7, Lyp;

    .line 1078
    invoke-direct {v7, v6}, Lyp;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;)V

    .line 1081
    goto/16 :goto_4

    .line 1083
    :sswitch_44
    move-object v6, p1

    .line 1084
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;

    .line 1086
    new-instance v7, Lvl;

    .line 1088
    invoke-direct {v7, v6}, Lvl;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;)V

    .line 1091
    goto/16 :goto_4

    .line 1093
    :sswitch_45
    move-object v6, p1

    .line 1094
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqQuerySavesModel;

    .line 1096
    new-instance v7, Lxl;

    .line 1098
    invoke-direct {v7, v6}, Lxl;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqQuerySavesModel;)V

    .line 1101
    goto/16 :goto_4

    .line 1103
    :sswitch_46
    move-object v6, p1

    .line 1104
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    .line 1106
    new-instance v7, Lxh0;

    .line 1108
    invoke-direct {v7, v6}, Lxh0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;)V

    .line 1111
    goto/16 :goto_4

    .line 1113
    :sswitch_47
    move-object v6, p1

    .line 1114
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqActivateStatusModel;

    .line 1116
    new-instance v7, Lf1;

    .line 1118
    invoke-direct {v7, v6}, Lf1;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqActivateStatusModel;)V

    .line 1121
    goto/16 :goto_4

    .line 1123
    :sswitch_48
    move-object v6, p1

    .line 1124
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqControlContinueNaviTipShowOrNotModel;

    .line 1126
    new-instance v7, Lxg;

    .line 1128
    invoke-direct {v7, v6}, Lxg;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqControlContinueNaviTipShowOrNotModel;)V

    .line 1131
    goto/16 :goto_4

    .line 1133
    :sswitch_49
    move-object v6, p1

    .line 1134
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqControlCommuteTipShowOrNotModel;

    .line 1136
    new-instance v7, Lvg;

    .line 1138
    invoke-direct {v7, v6}, Lvg;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqControlCommuteTipShowOrNotModel;)V

    .line 1141
    goto/16 :goto_4

    .line 1143
    :sswitch_4a
    move-object v6, p1

    .line 1144
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;

    .line 1146
    new-instance v7, Lem;

    .line 1148
    invoke-direct {v7, v6}, Lem;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;)V

    .line 1151
    goto/16 :goto_4

    .line 1153
    :sswitch_4b
    move-object v6, p1

    .line 1154
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVehicleStateModel;

    .line 1156
    new-instance v7, Lgk0;

    .line 1158
    invoke-direct {v7, v6}, Lgk0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVehicleStateModel;)V

    .line 1161
    goto/16 :goto_4

    .line 1163
    :sswitch_4c
    move-object v6, p1

    .line 1164
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqGetAreaInfoModel;

    .line 1166
    new-instance v7, Lv5;

    .line 1168
    invoke-direct {v7, v6}, Lv5;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqGetAreaInfoModel;)V

    .line 1171
    goto/16 :goto_4

    .line 1173
    :sswitch_4d
    move-object v6, p1

    .line 1174
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;

    .line 1176
    new-instance v7, Li5;

    .line 1178
    invoke-direct {v7, v6}, Li5;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;)V

    .line 1181
    goto/16 :goto_4

    .line 1183
    :sswitch_4e
    move-object v6, p1

    .line 1184
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToAutoModel;

    .line 1186
    new-instance v7, Lql0;

    .line 1188
    invoke-direct {v7, v6}, Lql0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToAutoModel;)V

    .line 1191
    goto/16 :goto_4

    .line 1193
    :sswitch_4f
    move-object v6, p1

    .line 1194
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RspIsARNaviEnableNotifyModel;

    .line 1196
    new-instance v7, Lgv;

    .line 1198
    invoke-direct {v7, v6}, Lgv;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspIsARNaviEnableNotifyModel;)V

    .line 1201
    goto/16 :goto_4

    .line 1203
    :sswitch_50
    move-object v6, p1

    .line 1204
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;

    .line 1206
    invoke-static {}, Lib;->h()Z

    .line 1209
    move-result v7

    .line 1210
    if-eqz v7, :cond_4

    .line 1212
    new-instance v7, La00;

    .line 1214
    invoke-direct {v7, v6}, La00;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;)V

    .line 1217
    goto/16 :goto_4

    .line 1219
    :cond_4
    new-instance v7, Lda0;

    .line 1221
    invoke-direct {v7, v6}, Lda0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;)V

    .line 1224
    goto/16 :goto_4

    .line 1226
    :sswitch_51
    move-object v6, p1

    .line 1227
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;

    .line 1229
    new-instance v7, Ljd0;

    .line 1231
    invoke-direct {v7, v6}, Ljd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;)V

    .line 1234
    goto/16 :goto_4

    .line 1236
    :sswitch_52
    move-object v6, p1

    .line 1237
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenOperaModel;

    .line 1239
    new-instance v7, Lcl;

    .line 1241
    invoke-direct {v7, v6}, Lcl;-><init>(Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenOperaModel;)V

    .line 1244
    goto/16 :goto_4

    .line 1246
    :sswitch_53
    move-object v6, p1

    .line 1247
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;

    .line 1249
    new-instance v7, Ls90;

    .line 1251
    invoke-direct {v7, v6}, Ls90;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;)V

    .line 1254
    goto/16 :goto_4

    .line 1256
    :sswitch_54
    move-object v6, p1

    .line 1257
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;

    .line 1259
    new-instance v7, Lhk0;

    .line 1261
    invoke-direct {v7, v6}, Lhk0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;)V

    .line 1264
    goto/16 :goto_4

    .line 1266
    :sswitch_55
    move-object v6, p1

    .line 1267
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;

    .line 1269
    new-instance v7, Lw40;

    .line 1271
    invoke-direct {v7, v6}, Lw40;-><init>(Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;)V

    .line 1274
    goto/16 :goto_4

    .line 1276
    :sswitch_56
    move-object v6, p1

    .line 1277
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;

    .line 1279
    new-instance v7, Lna0;

    .line 1281
    invoke-direct {v7, v6}, Lna0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;)V

    .line 1284
    goto/16 :goto_4

    .line 1286
    :sswitch_57
    move-object v6, p1

    .line 1287
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/user/RequestUnionAutoUserModel;

    .line 1289
    new-instance v7, Lpa0;

    .line 1291
    invoke-direct {v7, v6}, Lpa0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/RequestUnionAutoUserModel;)V

    .line 1294
    goto/16 :goto_4

    .line 1296
    :sswitch_58
    move-object v6, p1

    .line 1297
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;

    .line 1299
    new-instance v7, Lx1;

    .line 1301
    invoke-direct {v7, v6}, Lx1;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;)V

    .line 1304
    goto/16 :goto_4

    .line 1306
    :sswitch_59
    move-object v6, p1

    .line 1307
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteTypeModel;

    .line 1309
    new-instance v7, Lmn;

    .line 1311
    invoke-direct {v7, v6}, Lmn;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteTypeModel;)V

    .line 1314
    goto/16 :goto_4

    .line 1316
    :sswitch_5a
    move-object v6, p1

    .line 1317
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;

    .line 1319
    new-instance v7, Lgz;

    .line 1321
    invoke-direct {v7, v6}, Lgz;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;)V

    .line 1324
    goto/16 :goto_4

    .line 1326
    :sswitch_5b
    move-object v6, p1

    .line 1327
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;

    .line 1329
    new-instance v7, Lee;

    .line 1331
    invoke-direct {v7, v6}, Lee;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;)V

    .line 1334
    goto/16 :goto_4

    .line 1336
    :sswitch_5c
    move-object v6, p1

    .line 1337
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;

    .line 1339
    new-instance v7, Lvc;

    .line 1341
    invoke-direct {v7, v6}, Lvc;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;)V

    .line 1344
    goto/16 :goto_4

    .line 1346
    :sswitch_5d
    move-object v6, p1

    .line 1347
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/TmcSegmentDispatchControlModel;

    .line 1349
    new-instance v7, Lkh0;

    .line 1351
    invoke-direct {v7, v6}, Lkh0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/TmcSegmentDispatchControlModel;)V

    .line 1354
    goto/16 :goto_4

    .line 1356
    :sswitch_5e
    move-object v6, p1

    .line 1357
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/CameraStatusNotifyModel;

    .line 1359
    new-instance v7, Lce;

    .line 1361
    invoke-direct {v7, v6}, Lce;-><init>(Lcom/autonavi/amapauto/protocol/model/client/CameraStatusNotifyModel;)V

    .line 1364
    goto/16 :goto_4

    .line 1366
    :sswitch_5f
    move-object v6, p1

    .line 1367
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/SwitchAvoidLimitModel;

    .line 1369
    new-instance v7, Lmf0;

    .line 1371
    invoke-direct {v7, v6}, Lmf0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/SwitchAvoidLimitModel;)V

    .line 1374
    goto/16 :goto_4

    .line 1376
    :sswitch_60
    move-object v6, p1

    .line 1377
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ContinueNaviOperaModel;

    .line 1379
    new-instance v7, Lyk;

    .line 1381
    invoke-direct {v7, v6}, Lyk;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ContinueNaviOperaModel;)V

    .line 1384
    goto/16 :goto_4

    .line 1386
    :sswitch_61
    move-object v6, p1

    .line 1387
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ParkOperaModel;

    .line 1389
    new-instance v7, Lrc0;

    .line 1391
    invoke-direct {v7, v6}, Lrc0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ParkOperaModel;)V

    .line 1394
    goto/16 :goto_4

    .line 1396
    :sswitch_62
    new-instance v7, Lo40;

    .line 1398
    move-object v6, p1

    .line 1399
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;

    .line 1401
    invoke-direct {v7, v6}, Lo40;-><init>(Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;)V

    .line 1404
    goto/16 :goto_4

    .line 1406
    :sswitch_63
    move-object v6, p1

    .line 1407
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;

    .line 1409
    new-instance v7, Lqd0;

    .line 1411
    invoke-direct {v7, v6}, Lqd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;)V

    .line 1414
    goto/16 :goto_4

    .line 1416
    :sswitch_64
    move-object v6, p1

    .line 1417
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RequestHighwayExitModel;

    .line 1419
    new-instance v7, Lj20;

    .line 1421
    invoke-direct {v7, v6}, Lj20;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RequestHighwayExitModel;)V

    .line 1424
    goto/16 :goto_4

    .line 1426
    :sswitch_65
    move-object v6, p1

    .line 1427
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;

    .line 1429
    new-instance v7, Lr20;

    .line 1431
    invoke-direct {v7, v6}, Lr20;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;)V

    .line 1434
    goto/16 :goto_4

    .line 1436
    :sswitch_66
    move-object v6, p1

    .line 1437
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;

    .line 1439
    new-instance v7, Lty;

    .line 1441
    invoke-direct {v7, v6}, Lty;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;)V

    .line 1444
    goto/16 :goto_4

    .line 1446
    :sswitch_67
    move-object v6, p1

    .line 1447
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RequestGuideInfoModel;

    .line 1449
    new-instance v7, Luw;

    .line 1451
    invoke-direct {v7, v6}, Luw;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RequestGuideInfoModel;)V

    .line 1454
    goto/16 :goto_4

    .line 1456
    :sswitch_68
    move-object v6, p1

    .line 1457
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/NaviOperaModel;

    .line 1459
    new-instance v7, Lo20;

    .line 1461
    invoke-direct {v7, v6}, Lo20;-><init>(Lcom/autonavi/amapauto/protocol/model/client/NaviOperaModel;)V

    .line 1464
    goto/16 :goto_4

    .line 1466
    :sswitch_69
    move-object v6, p1

    .line 1467
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;

    .line 1469
    new-instance v7, Lq20;

    .line 1471
    invoke-direct {v7, v6}, Lq20;-><init>(Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;)V

    .line 1474
    goto/16 :goto_4

    .line 1476
    :sswitch_6a
    move-object v6, p1

    .line 1477
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;

    .line 1479
    new-instance v7, Lsc0;

    .line 1481
    invoke-direct {v7, v6}, Lsc0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;)V

    .line 1484
    goto/16 :goto_4

    .line 1486
    :sswitch_6b
    move-object v6, p1

    .line 1487
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;

    .line 1489
    new-instance v7, Lib0;

    .line 1491
    invoke-direct {v7, v6}, Lib0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;)V

    .line 1494
    goto/16 :goto_4

    .line 1496
    :sswitch_6c
    move-object v6, p1

    .line 1497
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;

    .line 1499
    new-instance v7, Lpp;

    .line 1501
    invoke-direct {v7, v6}, Lpp;-><init>(Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;)V

    .line 1504
    goto/16 :goto_4

    .line 1506
    :pswitch_f
    move-object v6, p1

    .line 1507
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;

    .line 1509
    new-instance v7, Lf50;

    .line 1511
    invoke-direct {v7, v6}, Lf50;-><init>(Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;)V

    .line 1514
    goto/16 :goto_4

    .line 1516
    :pswitch_10
    move-object v6, p1

    .line 1517
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/user/RequestHistoryPoiModel;

    .line 1519
    new-instance v7, Ljp;

    .line 1521
    invoke-direct {v7, v6}, Ljp;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/RequestHistoryPoiModel;)V

    .line 1524
    goto/16 :goto_4

    .line 1526
    :pswitch_11
    move-object v6, p1

    .line 1527
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;

    .line 1529
    new-instance v7, Ly5;

    .line 1531
    invoke-direct {v7, v6}, Ly5;-><init>(Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;)V

    .line 1534
    goto/16 :goto_4

    .line 1536
    :pswitch_12
    move-object v6, p1

    .line 1537
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/search/AlongTheWaySearchModel;

    .line 1539
    new-instance v7, Lt2;

    .line 1541
    invoke-direct {v7, v6}, Lt2;-><init>(Lcom/autonavi/amapauto/protocol/model/client/search/AlongTheWaySearchModel;)V

    .line 1544
    goto/16 :goto_4

    .line 1546
    :pswitch_13
    move-object v6, p1

    .line 1547
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;

    .line 1549
    new-instance v7, Ly5;

    .line 1551
    invoke-direct {v7, v6}, Ly5;-><init>(Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;)V

    .line 1554
    goto/16 :goto_4

    .line 1556
    :pswitch_14
    move-object v6, p1

    .line 1557
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;

    .line 1559
    new-instance v7, Lpw;

    .line 1561
    invoke-direct {v7, v6}, Lpw;-><init>(Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;)V

    .line 1564
    goto/16 :goto_4

    .line 1566
    :pswitch_15
    move-object v6, p1

    .line 1567
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisModel;

    .line 1569
    new-instance v7, Lym;

    .line 1571
    invoke-direct {v7, v6}, Lym;-><init>(Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisModel;)V

    .line 1574
    goto/16 :goto_4

    .line 1576
    :pswitch_16
    move-object v6, p1

    .line 1577
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;

    .line 1579
    new-instance v7, Lo60;

    .line 1581
    invoke-direct {v7, v6}, Lo60;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;)V

    .line 1584
    goto/16 :goto_4

    .line 1586
    :pswitch_17
    move-object v6, p1

    .line 1587
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ReportNaviModel;

    .line 1589
    new-instance v7, Lhd0;

    .line 1591
    invoke-direct {v7, v6}, Lhd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReportNaviModel;)V

    .line 1594
    goto/16 :goto_4

    .line 1596
    :pswitch_18
    move-object v6, p1

    .line 1597
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;

    .line 1599
    new-instance v7, Leo;

    .line 1601
    invoke-direct {v7, v6}, Leo;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;)V

    .line 1604
    goto/16 :goto_4

    .line 1606
    :pswitch_19
    move-object v6, p1

    .line 1607
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;

    .line 1609
    new-instance v7, Lg1;

    .line 1611
    invoke-direct {v7, v6}, Lg1;-><init>(Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;)V

    .line 1614
    goto/16 :goto_4

    .line 1616
    :pswitch_1a
    move-object v6, p1

    .line 1617
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/user/GetNaviMuteModel;

    .line 1619
    new-instance v7, Lc20;

    .line 1621
    invoke-direct {v7, v6}, Lc20;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/GetNaviMuteModel;)V

    .line 1624
    goto/16 :goto_4

    .line 1626
    :pswitch_1b
    move-object v6, p1

    .line 1627
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/user/SetNaviMuteModel;

    .line 1629
    new-instance v7, Ln20;

    .line 1631
    invoke-direct {v7, v6}, Ln20;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/SetNaviMuteModel;)V

    .line 1634
    goto/16 :goto_4

    .line 1636
    :pswitch_1c
    move-object v6, p1

    .line 1637
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteInfoModel;

    .line 1639
    new-instance v7, Lxn;

    .line 1641
    invoke-direct {v7, v6}, Lxn;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RequestRouteInfoModel;)V

    .line 1644
    goto/16 :goto_4

    .line 1646
    :pswitch_1d
    move-object v6, p1

    .line 1647
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;

    .line 1649
    new-instance v7, Lw1;

    .line 1651
    invoke-direct {v7, v6}, Lw1;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;)V

    .line 1654
    goto :goto_4

    .line 1655
    :pswitch_1e
    move-object v6, p1

    .line 1656
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ShowTrafficModel;

    .line 1658
    new-instance v7, Lth0;

    .line 1660
    invoke-direct {v7, v6}, Lth0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ShowTrafficModel;)V

    .line 1663
    goto :goto_4

    .line 1664
    :pswitch_1f
    move-object v6, p1

    .line 1665
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/ShowMyLocationModel;

    .line 1667
    new-instance v7, Ltd0;

    .line 1669
    invoke-direct {v7, v6}, Ltd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ShowMyLocationModel;)V

    .line 1672
    goto :goto_4

    .line 1673
    :pswitch_20
    move-object v6, p1

    .line 1674
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;

    .line 1676
    new-instance v7, Lub;

    .line 1678
    invoke-direct {v7, v6}, Lub;-><init>(Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;)V

    .line 1681
    goto :goto_4

    .line 1682
    :pswitch_21
    move-object v6, p1

    .line 1683
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;

    .line 1685
    new-instance v7, Lyz;

    .line 1687
    invoke-direct {v7, v6}, Lyz;-><init>(Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;)V

    .line 1690
    goto :goto_4

    .line 1691
    :cond_5
    move-object v6, p1

    .line 1692
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;

    .line 1694
    new-instance v7, Lfd0;

    .line 1696
    invoke-direct {v7, v6}, Lfd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;)V

    .line 1699
    goto :goto_4

    .line 1700
    :cond_6
    move-object v6, p1

    .line 1701
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;

    .line 1703
    new-instance v7, Lld0;

    .line 1705
    invoke-direct {v7, v6}, Lld0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;)V

    .line 1708
    goto :goto_4

    .line 1709
    :cond_7
    move-object v6, p1

    .line 1710
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/OilLowRemindOperaModel;

    .line 1712
    new-instance v7, Lv40;

    .line 1714
    invoke-direct {v7, v6}, Lv40;-><init>(Lcom/autonavi/amapauto/protocol/model/client/OilLowRemindOperaModel;)V

    .line 1717
    goto :goto_4

    .line 1718
    :cond_8
    move-object v6, p1

    .line 1719
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;

    .line 1721
    new-instance v7, Lsb;

    .line 1723
    invoke-direct {v7, v6}, Lsb;-><init>(Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;)V

    .line 1726
    goto :goto_4

    .line 1727
    :cond_9
    move-object v6, p1

    .line 1728
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;

    .line 1730
    new-instance v7, Lmd0;

    .line 1732
    invoke-direct {v7, v6}, Lmd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;)V

    .line 1735
    goto :goto_4

    .line 1736
    :cond_a
    move-object v6, p1

    .line 1737
    check-cast v6, Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;

    .line 1739
    new-instance v7, Llf0;

    .line 1741
    invoke-direct {v7, v6}, Llf0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;)V

    .line 1744
    goto :goto_4

    .line 1745
    :cond_b
    const/4 v5, -0x1

    .line 1746
    :goto_3
    move-object v7, v0

    .line 1747
    :goto_4
    if-eqz v7, :cond_d

    .line 1749
    new-instance v6, Lm2$b;

    .line 1751
    invoke-direct {v6, v0}, Lm2$b;-><init>(Lm2$a;)V

    .line 1754
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 1757
    move-result v0

    .line 1758
    iput v0, v6, Lm2$b;->b:I

    .line 1760
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 1763
    move-result-object v0

    .line 1764
    iput-object v0, v6, Lm2$b;->d:Ljava/lang/String;

    .line 1766
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 1769
    move-result-object v0

    .line 1770
    iput-object v0, v6, Lm2$b;->e:Ljava/lang/String;

    .line 1772
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 1775
    move-result-wide v8

    .line 1776
    iput-wide v8, v6, Lm2$b;->a:J

    .line 1778
    iput-object v6, v7, Lnc;->b:Ljava/lang/Object;

    .line 1780
    invoke-virtual {v7, v5}, Lnc;->t(I)V

    .line 1783
    sget-boolean v0, Li;->a:Z

    .line 1785
    if-nez v0, :cond_c

    .line 1787
    invoke-static {}, Li;->b()Z

    .line 1790
    move-result v0

    .line 1791
    if-eqz v0, :cond_d

    .line 1793
    :cond_c
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 1796
    move-result-object p1

    .line 1797
    invoke-static {p1, v4}, Lah;->k(Ljava/lang/String;I)I

    .line 1800
    move-result p1

    .line 1801
    new-array v0, v1, [Ljava/lang/Object;

    .line 1803
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1806
    move-result-object v1

    .line 1807
    aput-object v1, v0, v4

    .line 1809
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1812
    move-result-object v1

    .line 1813
    aput-object v1, v0, v2

    .line 1815
    const-string v1, "galtest protocolId:{?} requestCode:{?}"

    .line 1817
    invoke-static {v3, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1820
    if-eqz p1, :cond_d

    .line 1822
    invoke-virtual {v7, p1}, Lnc;->u(I)V

    .line 1825
    :cond_d
    return-object v7

    .line 1826
    nop

    .line 1827
    :pswitch_data_0
    .packed-switch 0x7530
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    .line 1845
    :pswitch_data_1
    .packed-switch 0x7538
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    .line 1861
    :pswitch_data_2
    .packed-switch 0x765c
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_14
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 1879
    :sswitch_data_0
    .sparse-switch
        0x76c0 -> :sswitch_6c
        0x76c2 -> :sswitch_6b
        0x76c4 -> :sswitch_6a
        0x76c5 -> :sswitch_69
        0x76c6 -> :sswitch_68
        0x76c7 -> :sswitch_67
        0x76c8 -> :sswitch_66
        0x76c9 -> :sswitch_65
        0x76ca -> :sswitch_64
        0x76cb -> :sswitch_63
        0x76cd -> :sswitch_62
        0x76d1 -> :sswitch_61
        0x76d7 -> :sswitch_60
        0x76db -> :sswitch_5f
        0x76e2 -> :sswitch_5e
        0x76e4 -> :sswitch_5d
        0x7724 -> :sswitch_5c
        0x7726 -> :sswitch_5b
        0x7728 -> :sswitch_5a
        0x772b -> :sswitch_59
        0x772d -> :sswitch_58
        0x772f -> :sswitch_57
        0x7733 -> :sswitch_56
        0x7789 -> :sswitch_55
        0x778c -> :sswitch_54
        0x778f -> :sswitch_53
        0x7850 -> :sswitch_52
        0x78b5 -> :sswitch_51
        0x13888 -> :sswitch_50
        0x1388b -> :sswitch_4f
        0x1388d -> :sswitch_4e
        0x13895 -> :sswitch_4d
        0x1389e -> :sswitch_4c
        0x138a8 -> :sswitch_4b
        0x138b3 -> :sswitch_4a
        0x138bb -> :sswitch_49
        0x138bc -> :sswitch_48
        0x138c3 -> :sswitch_47
        0x138c5 -> :sswitch_46
        0x138c8 -> :sswitch_45
        0x138c9 -> :sswitch_44
        0x138ca -> :sswitch_43
        0x138cb -> :sswitch_42
        0x138cc -> :sswitch_41
        0x138cd -> :sswitch_40
        0x138ce -> :sswitch_3f
        0x138cf -> :sswitch_3e
        0x138d1 -> :sswitch_3d
        0x138d2 -> :sswitch_3c
        0x138d3 -> :sswitch_3b
        0x138d4 -> :sswitch_3a
        0x138d5 -> :sswitch_39
        0x138d7 -> :sswitch_38
        0x138d8 -> :sswitch_37
        0x138d9 -> :sswitch_36
        0x138da -> :sswitch_35
        0x138e1 -> :sswitch_34
        0x138e3 -> :sswitch_33
        0x138e5 -> :sswitch_32
        0x138e6 -> :sswitch_31
        0x138e8 -> :sswitch_30
        0x138eb -> :sswitch_2f
        0x138ee -> :sswitch_2e
        0x138ef -> :sswitch_2d
        0x138f1 -> :sswitch_2c
        0x138f2 -> :sswitch_2b
        0x138f3 -> :sswitch_2a
        0x138fb -> :sswitch_29
        0x138fc -> :sswitch_28
        0x138ff -> :sswitch_27
        0x13900 -> :sswitch_26
        0x13901 -> :sswitch_25
        0x13903 -> :sswitch_24
        0x13904 -> :sswitch_23
        0x13905 -> :sswitch_22
        0x13906 -> :sswitch_21
        0x1390a -> :sswitch_20
        0x1390b -> :sswitch_1f
        0x1390c -> :sswitch_1e
        0x1390d -> :sswitch_1d
        0x13911 -> :sswitch_1c
        0x13913 -> :sswitch_1b
        0x13914 -> :sswitch_1a
        0x13916 -> :sswitch_19
        0x13919 -> :sswitch_18
        0x1391a -> :sswitch_17
        0x1391c -> :sswitch_16
        0x1391d -> :sswitch_15
        0x13920 -> :sswitch_14
        0x13922 -> :sswitch_13
        0x13923 -> :sswitch_12
        0x13924 -> :sswitch_11
        0x13925 -> :sswitch_10
        0x13926 -> :sswitch_f
        0x13928 -> :sswitch_e
        0x1392b -> :sswitch_d
        0x1392f -> :sswitch_c
        0x13933 -> :sswitch_b
        0x13935 -> :sswitch_a
        0x13936 -> :sswitch_9
        0x13937 -> :sswitch_8
        0x13938 -> :sswitch_7
        0x13939 -> :sswitch_6
        0x1393a -> :sswitch_5
        0x1393c -> :sswitch_4
        0x1393e -> :sswitch_3
        0x1393f -> :sswitch_2
        0x13940 -> :sswitch_1
        0x1869f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x13897
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x138a3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x138aa
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
