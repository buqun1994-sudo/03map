.class public final Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel_JsonLubeParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;
    .locals 8

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;-><init>()V

    .line 10
    const-string v1, "clientPackageName"

    .line 12
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 23
    const-string v1, "packageName"

    .line 25
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 36
    const-string v1, "callbackId"

    .line 38
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 49
    const-string v1, "timeStamp"

    .line 51
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 54
    move-result-wide v2

    .line 55
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 58
    move-result-wide v1

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 62
    const-string v1, "var1"

    .line 64
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 75
    const-string v1, "auxCost"

    .line 77
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getAuxCost()D

    .line 80
    move-result-wide v2

    .line 81
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 84
    move-result-wide v1

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setAuxCost(D)V

    .line 88
    const-string v1, "curDriveMode"

    .line 90
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getCurDriveMode()I

    .line 93
    move-result v2

    .line 94
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 97
    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setCurDriveMode(I)V

    .line 101
    const-string v1, "curveCostlist"

    .line 103
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 106
    move-result-object v1

    .line 107
    const/4 v2, 0x0

    .line 108
    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 113
    move-result v3

    .line 114
    new-instance v4, Ljava/util/ArrayList;

    .line 116
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    const/4 v5, 0x0

    .line 120
    :goto_0
    if-ge v5, v3, :cond_1

    .line 122
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optDouble(I)D

    .line 125
    move-result-wide v6

    .line 126
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 135
    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v0, v4}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setCurveCostlist(Ljava/util/ArrayList;)V

    .line 139
    :cond_2
    const-string v1, "energyUnit"

    .line 141
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getEnergyUnit()I

    .line 144
    move-result v3

    .line 145
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 148
    move-result v1

    .line 149
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setEnergyUnit(I)V

    .line 152
    const-string v1, "ferryrateCost"

    .line 154
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getFerryrateCost()D

    .line 157
    move-result-wide v3

    .line 158
    invoke-virtual {p0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 161
    move-result-wide v3

    .line 162
    invoke-virtual {v0, v3, v4}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setFerryrateCost(D)V

    .line 165
    const-string v1, "initialHvBattenergy"

    .line 167
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getInitialHvBattenergy()D

    .line 170
    move-result-wide v3

    .line 171
    invoke-virtual {p0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 174
    move-result-wide v3

    .line 175
    invoke-virtual {v0, v3, v4}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setInitialHvBattenergy(D)V

    .line 178
    const-string v1, "isCharge"

    .line 180
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getIsCharge()Z

    .line 183
    move-result v3

    .line 184
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 187
    move-result v1

    .line 188
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setIsCharge(Z)V

    .line 191
    const-string v1, "lowEnergyAlert"

    .line 193
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getLowEnergyAlert()I

    .line 196
    move-result v3

    .line 197
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 200
    move-result v1

    .line 201
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setLowEnergyAlert(I)V

    .line 204
    const-string v1, "lowEnergyWarn"

    .line 206
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getLowEnergyWarn()I

    .line 209
    move-result v3

    .line 210
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 213
    move-result v1

    .line 214
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setLowEnergyWarn(I)V

    .line 217
    const-string v1, "maxBattEnergy"

    .line 219
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getMaxBattEnergy()D

    .line 222
    move-result-wide v3

    .line 223
    invoke-virtual {p0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 226
    move-result-wide v3

    .line 227
    invoke-virtual {v0, v3, v4}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setMaxBattEnergy(D)V

    .line 230
    const-string v1, "percentOfResidualEnergy"

    .line 232
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getPercentOfResidualEnergy()D

    .line 235
    move-result-wide v3

    .line 236
    invoke-virtual {p0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 239
    move-result-wide v3

    .line 240
    invoke-virtual {v0, v3, v4}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setPercentOfResidualEnergy(D)V

    .line 243
    const-string v1, "powertrainLoss"

    .line 245
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 248
    move-result-object v1

    .line 249
    if-eqz v1, :cond_4

    .line 251
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 254
    move-result v3

    .line 255
    new-instance v4, Ljava/util/ArrayList;

    .line 257
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    const/4 v5, 0x0

    .line 261
    :goto_1
    if-ge v5, v3, :cond_3

    .line 263
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 266
    move-result-object v6

    .line 267
    invoke-static {v6}, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;

    .line 270
    move-result-object v6

    .line 271
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v5, v5, 0x1

    .line 276
    goto :goto_1

    .line 277
    :cond_3
    invoke-virtual {v0, v4}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setPowertrainLoss(Ljava/util/ArrayList;)V

    .line 280
    :cond_4
    const-string v1, "rangeDist"

    .line 282
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getRangeDist()I

    .line 285
    move-result v3

    .line 286
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 289
    move-result v1

    .line 290
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setRangeDist(I)V

    .line 293
    const-string v1, "slopeCostlist"

    .line 295
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 298
    move-result-object v1

    .line 299
    if-eqz v1, :cond_6

    .line 301
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 304
    move-result v3

    .line 305
    new-instance v4, Ljava/util/ArrayList;

    .line 307
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 310
    const/4 v5, 0x0

    .line 311
    :goto_2
    if-ge v5, v3, :cond_5

    .line 313
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optDouble(I)D

    .line 316
    move-result-wide v6

    .line 317
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 320
    move-result-object v6

    .line 321
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    add-int/lit8 v5, v5, 0x1

    .line 326
    goto :goto_2

    .line 327
    :cond_5
    invoke-virtual {v0, v4}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setSlopeCostlist(Ljava/util/ArrayList;)V

    .line 330
    :cond_6
    const-string v1, "speedCostlist"

    .line 332
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 335
    move-result-object v1

    .line 336
    if-eqz v1, :cond_8

    .line 338
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 341
    move-result v3

    .line 342
    new-instance v4, Ljava/util/ArrayList;

    .line 344
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 347
    const/4 v5, 0x0

    .line 348
    :goto_3
    if-ge v5, v3, :cond_7

    .line 350
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optDouble(I)D

    .line 353
    move-result-wide v6

    .line 354
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 357
    move-result-object v6

    .line 358
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    add-int/lit8 v5, v5, 0x1

    .line 363
    goto :goto_3

    .line 364
    :cond_7
    invoke-virtual {v0, v4}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setSpeedCostlist(Ljava/util/ArrayList;)V

    .line 367
    :cond_8
    const-string v1, "topSpeed"

    .line 369
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getTopSpeed()I

    .line 372
    move-result v3

    .line 373
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 376
    move-result v1

    .line 377
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setTopSpeed(I)V

    .line 380
    const-string v1, "transCostlist"

    .line 382
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 385
    move-result-object v1

    .line 386
    if-eqz v1, :cond_a

    .line 388
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 391
    move-result v3

    .line 392
    new-instance v4, Ljava/util/ArrayList;

    .line 394
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 397
    :goto_4
    if-ge v2, v3, :cond_9

    .line 399
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optDouble(I)D

    .line 402
    move-result-wide v5

    .line 403
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 406
    move-result-object v5

    .line 407
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    add-int/lit8 v2, v2, 0x1

    .line 412
    goto :goto_4

    .line 413
    :cond_9
    invoke-virtual {v0, v4}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setTransCostlist(Ljava/util/ArrayList;)V

    .line 416
    :cond_a
    const-string v1, "vehicleWeight"

    .line 418
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getVehicleWeight()I

    .line 421
    move-result v2

    .line 422
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 425
    move-result p0

    .line 426
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->setVehicleWeight(I)V

    .line 429
    return-object v0
.end method
