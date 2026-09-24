.class public final Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    const-string v1, "packageName"

    .line 12
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    const-string v1, "clientPackageName"

    .line 21
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v1, "callbackId"

    .line 30
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    const-string v1, "timeStamp"

    .line 39
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 42
    move-result-wide v2

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    const-string v1, "var1"

    .line 48
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "auxCost"

    .line 57
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getAuxCost()D

    .line 60
    move-result-wide v2

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 64
    const-string v1, "curDriveMode"

    .line 66
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getCurDriveMode()I

    .line 69
    move-result v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getCurveCostlist()Ljava/util/ArrayList;

    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_2

    .line 79
    new-instance v1, Lorg/json/JSONArray;

    .line 81
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 84
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getCurveCostlist()Ljava/util/ArrayList;

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object v2

    .line 92
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_1

    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Ljava/lang/Double;

    .line 104
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const-string v2, "curveCostlist"

    .line 110
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    :cond_2
    const-string v1, "energyUnit"

    .line 115
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getEnergyUnit()I

    .line 118
    move-result v2

    .line 119
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    const-string v1, "ferryrateCost"

    .line 124
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getFerryrateCost()D

    .line 127
    move-result-wide v2

    .line 128
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 131
    const-string v1, "initialHvBattenergy"

    .line 133
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getInitialHvBattenergy()D

    .line 136
    move-result-wide v2

    .line 137
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 140
    const-string v1, "isCharge"

    .line 142
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getIsCharge()Z

    .line 145
    move-result v2

    .line 146
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 149
    const-string v1, "lowEnergyAlert"

    .line 151
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getLowEnergyAlert()I

    .line 154
    move-result v2

    .line 155
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    const-string v1, "lowEnergyWarn"

    .line 160
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getLowEnergyWarn()I

    .line 163
    move-result v2

    .line 164
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 167
    const-string v1, "maxBattEnergy"

    .line 169
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getMaxBattEnergy()D

    .line 172
    move-result-wide v2

    .line 173
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 176
    const-string v1, "percentOfResidualEnergy"

    .line 178
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getPercentOfResidualEnergy()D

    .line 181
    move-result-wide v2

    .line 182
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getPowertrainLoss()Ljava/util/ArrayList;

    .line 188
    move-result-object v1

    .line 189
    if-eqz v1, :cond_5

    .line 191
    new-instance v1, Lorg/json/JSONArray;

    .line 193
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 196
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getPowertrainLoss()Ljava/util/ArrayList;

    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 203
    move-result-object v2

    .line 204
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_4

    .line 210
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    move-result-object v3

    .line 214
    check-cast v3, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;

    .line 216
    if-eqz v3, :cond_3

    .line 218
    invoke-static {v3}, Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/protocol/model/item/PowertrainLossInfo;)Lorg/json/JSONObject;

    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 225
    goto :goto_1

    .line 226
    :cond_4
    const-string v2, "powertrainLoss"

    .line 228
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    :cond_5
    const-string v1, "rangeDist"

    .line 233
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getRangeDist()I

    .line 236
    move-result v2

    .line 237
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 240
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getSlopeCostlist()Ljava/util/ArrayList;

    .line 243
    move-result-object v1

    .line 244
    if-eqz v1, :cond_7

    .line 246
    new-instance v1, Lorg/json/JSONArray;

    .line 248
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 251
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getSlopeCostlist()Ljava/util/ArrayList;

    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 258
    move-result-object v2

    .line 259
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_6

    .line 265
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    move-result-object v3

    .line 269
    check-cast v3, Ljava/lang/Double;

    .line 271
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 274
    goto :goto_2

    .line 275
    :cond_6
    const-string v2, "slopeCostlist"

    .line 277
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    :cond_7
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getSpeedCostlist()Ljava/util/ArrayList;

    .line 283
    move-result-object v1

    .line 284
    if-eqz v1, :cond_9

    .line 286
    new-instance v1, Lorg/json/JSONArray;

    .line 288
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 291
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getSpeedCostlist()Ljava/util/ArrayList;

    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 298
    move-result-object v2

    .line 299
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 302
    move-result v3

    .line 303
    if-eqz v3, :cond_8

    .line 305
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 308
    move-result-object v3

    .line 309
    check-cast v3, Ljava/lang/Double;

    .line 311
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 314
    goto :goto_3

    .line 315
    :cond_8
    const-string v2, "speedCostlist"

    .line 317
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    :cond_9
    const-string v1, "topSpeed"

    .line 322
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getTopSpeed()I

    .line 325
    move-result v2

    .line 326
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 329
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getTransCostlist()Ljava/util/ArrayList;

    .line 332
    move-result-object v1

    .line 333
    if-eqz v1, :cond_b

    .line 335
    new-instance v1, Lorg/json/JSONArray;

    .line 337
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 340
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getTransCostlist()Ljava/util/ArrayList;

    .line 343
    move-result-object v2

    .line 344
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 347
    move-result-object v2

    .line 348
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 351
    move-result v3

    .line 352
    if-eqz v3, :cond_a

    .line 354
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 357
    move-result-object v3

    .line 358
    check-cast v3, Ljava/lang/Double;

    .line 360
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 363
    goto :goto_4

    .line 364
    :cond_a
    const-string v2, "transCostlist"

    .line 366
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    :cond_b
    const-string v1, "vehicleWeight"

    .line 371
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;->getVehicleWeight()I

    .line 374
    move-result p0

    .line 375
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 378
    return-object v0
.end method
