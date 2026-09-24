.class public final Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;
    .locals 12

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v11, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;

    .line 7
    const-string v1, ""

    .line 9
    const-string v2, ""

    .line 11
    const-string v3, ""

    .line 13
    const-string v4, ""

    .line 15
    const-wide/16 v5, 0x0

    .line 17
    const-wide/16 v7, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    move-object v0, v11

    .line 22
    invoke-direct/range {v0 .. v10}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDII)V

    .line 25
    const-string v0, "clientPackageName"

    .line 27
    invoke-virtual {v11}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v11, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 38
    const-string v0, "packageName"

    .line 40
    invoke-virtual {v11}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v11, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 51
    const-string v0, "callbackId"

    .line 53
    invoke-virtual {v11}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 56
    move-result v1

    .line 57
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 60
    move-result v0

    .line 61
    invoke-virtual {v11, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 64
    const-string v0, "timeStamp"

    .line 66
    invoke-virtual {v11}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 69
    move-result-wide v1

    .line 70
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 73
    move-result-wide v0

    .line 74
    invoke-virtual {v11, v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 77
    const-string v0, "var1"

    .line 79
    invoke-virtual {v11}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v11, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 90
    const-string v0, "mBrand"

    .line 92
    invoke-virtual {v11}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->getmBrand()Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v11, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->setmBrand(Ljava/lang/String;)V

    .line 103
    const-string v0, "mModel"

    .line 105
    invoke-virtual {v11}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->getmModel()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v11, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->setmModel(Ljava/lang/String;)V

    .line 116
    const-string v0, "mEngineNo"

    .line 118
    invoke-virtual {v11}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->getmEngineNo()Ljava/lang/String;

    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v11, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->setmEngineNo(Ljava/lang/String;)V

    .line 129
    const-string v0, "mVin"

    .line 131
    invoke-virtual {v11}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->getmVin()Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v11, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->setmVin(Ljava/lang/String;)V

    .line 142
    const-string v0, "mWeight"

    .line 144
    invoke-virtual {v11}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->getmWeight()D

    .line 147
    move-result-wide v1

    .line 148
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 151
    move-result-wide v0

    .line 152
    invoke-virtual {v11, v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->setmWeight(D)V

    .line 155
    const-string v0, "mMaxBatteryEnerygy"

    .line 157
    invoke-virtual {v11}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->getmMaxBatteryEnerygy()D

    .line 160
    move-result-wide v1

    .line 161
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 164
    move-result-wide v0

    .line 165
    invoke-virtual {v11, v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->setmMaxBatteryEnerygy(D)V

    .line 168
    const-string v0, "mEnergyUnit"

    .line 170
    invoke-virtual {v11}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->getmEnergyUnit()I

    .line 173
    move-result v1

    .line 174
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 177
    move-result v0

    .line 178
    invoke-virtual {v11, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->setmEnergyUnit(I)V

    .line 181
    const-string v0, "mPowerType"

    .line 183
    invoke-virtual {v11}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->getmPowerType()I

    .line 186
    move-result v1

    .line 187
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 190
    move-result p0

    .line 191
    invoke-virtual {v11, p0}, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;->setmPowerType(I)V

    .line 194
    return-object v11
.end method
