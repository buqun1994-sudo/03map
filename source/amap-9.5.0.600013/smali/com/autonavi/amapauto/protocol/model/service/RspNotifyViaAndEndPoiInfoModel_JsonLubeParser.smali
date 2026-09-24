.class public final Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;-><init>()V

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
    const-string v1, "arrivePoiLatitude"

    .line 77
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getArrivePoiLatitude()I

    .line 80
    move-result v2

    .line 81
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setArrivePoiLatitude(I)V

    .line 88
    const-string v1, "arrivePoiLongitude"

    .line 90
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getArrivePoiLongitude()I

    .line 93
    move-result v2

    .line 94
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 97
    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setArrivePoiLongitude(I)V

    .line 101
    const-string v1, "arrivePoiType"

    .line 103
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getArrivePoiType()Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setArrivePoiType(Ljava/lang/String;)V

    .line 114
    const-string v1, "endPoiAddr"

    .line 116
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getEndPoiAddr()Ljava/lang/String;

    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setEndPoiAddr(Ljava/lang/String;)V

    .line 127
    const-string v1, "endPoiCityName"

    .line 129
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getEndPoiCityName()Ljava/lang/String;

    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setEndPoiCityName(Ljava/lang/String;)V

    .line 140
    const-string v1, "endPoiDistrictName"

    .line 142
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getEndPoiDistrictName()Ljava/lang/String;

    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setEndPoiDistrictName(Ljava/lang/String;)V

    .line 153
    const-string v1, "endPoiLatitude"

    .line 155
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getEndPoiLatitude()D

    .line 158
    move-result-wide v2

    .line 159
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 162
    move-result-wide v1

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setEndPoiLatitude(D)V

    .line 166
    const-string v1, "endPoiLongitude"

    .line 168
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getEndPoiLongitude()D

    .line 171
    move-result-wide v2

    .line 172
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 175
    move-result-wide v1

    .line 176
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setEndPoiLongitude(D)V

    .line 179
    const-string v1, "endPoiName"

    .line 181
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getEndPoiName()Ljava/lang/String;

    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setEndPoiName(Ljava/lang/String;)V

    .line 192
    const-string v1, "endPoiType"

    .line 194
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getEndPoiType()Ljava/lang/String;

    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setEndPoiType(Ljava/lang/String;)V

    .line 205
    const-string v1, "nearestViaPoiAddr"

    .line 207
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getNearestViaPoiAddr()Ljava/lang/String;

    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setNearestViaPoiAddr(Ljava/lang/String;)V

    .line 218
    const-string v1, "nearestViaPoiCityName"

    .line 220
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getNearestViaPoiCityName()Ljava/lang/String;

    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setNearestViaPoiCityName(Ljava/lang/String;)V

    .line 231
    const-string v1, "nearestViaPoiDistrictName"

    .line 233
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getNearestViaPoiDistrictName()Ljava/lang/String;

    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setNearestViaPoiDistrictName(Ljava/lang/String;)V

    .line 244
    const-string v1, "nearestViaPoiLatitude"

    .line 246
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getNearestViaPoiLatitude()D

    .line 249
    move-result-wide v2

    .line 250
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 253
    move-result-wide v1

    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setNearestViaPoiLatitude(D)V

    .line 257
    const-string v1, "nearestViaPoiLongitude"

    .line 259
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getNearestViaPoiLongitude()D

    .line 262
    move-result-wide v2

    .line 263
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 266
    move-result-wide v1

    .line 267
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setNearestViaPoiLongitude(D)V

    .line 270
    const-string v1, "nearestViaPoiName"

    .line 272
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getNearestViaPoiName()Ljava/lang/String;

    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setNearestViaPoiName(Ljava/lang/String;)V

    .line 283
    const-string v1, "nearestViaPoiProvinceName"

    .line 285
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getNearestViaPoiProvinceName()Ljava/lang/String;

    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setNearestViaPoiProvinceName(Ljava/lang/String;)V

    .line 296
    const-string v1, "nearestViaPoiTypeCode"

    .line 298
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getNearestViaPoiTypeCode()Ljava/lang/String;

    .line 301
    move-result-object v2

    .line 302
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setNearestViaPoiTypeCode(Ljava/lang/String;)V

    .line 309
    const-string v1, "viaPoiArrivalTime"

    .line 311
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getViaPoiArrivalTime()Ljava/lang/String;

    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setViaPoiArrivalTime(Ljava/lang/String;)V

    .line 322
    const-string v1, "viaPoiDistance"

    .line 324
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getViaPoiDistance()I

    .line 327
    move-result v2

    .line 328
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 331
    move-result v1

    .line 332
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setViaPoiDistance(I)V

    .line 335
    const-string v1, "viaPoiTime"

    .line 337
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->getViaPoiTime()I

    .line 340
    move-result v2

    .line 341
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 344
    move-result p0

    .line 345
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;->setViaPoiTime(I)V

    .line 348
    return-object v0
.end method
