.class public final Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;-><init>()V

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
    const-string v1, "version"

    .line 77
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->x()Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->B(Ljava/lang/String;)V

    .line 88
    const-string v1, "poiId"

    .line 90
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiId()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setPoiId(Ljava/lang/String;)V

    .line 101
    const-string v1, "poiName"

    .line 103
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getPoiName()Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setPoiName(Ljava/lang/String;)V

    .line 114
    const-string v1, "longitude"

    .line 116
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLongitude()D

    .line 119
    move-result-wide v2

    .line 120
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 123
    move-result-wide v1

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setLongitude(D)V

    .line 127
    const-string v1, "latitude"

    .line 129
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getLatitude()D

    .line 132
    move-result-wide v2

    .line 133
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 136
    move-result-wide v1

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setLatitude(D)V

    .line 140
    const-string v1, "entryLongitude"

    .line 142
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLongitude()D

    .line 145
    move-result-wide v2

    .line 146
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 149
    move-result-wide v1

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setEntryLongitude(D)V

    .line 153
    const-string v1, "entryLatitude"

    .line 155
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getEntryLatitude()D

    .line 158
    move-result-wide v2

    .line 159
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 162
    move-result-wide v1

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setEntryLatitude(D)V

    .line 166
    const-string v1, "json"

    .line 168
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getJson()Ljava/lang/String;

    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setJson(Ljava/lang/String;)V

    .line 179
    const-string v1, "address"

    .line 181
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getAddress()Ljava/lang/String;

    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setAddress(Ljava/lang/String;)V

    .line 192
    const-string v1, "nTypeCode"

    .line 194
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->v()Ljava/lang/String;

    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->z(Ljava/lang/String;)V

    .line 205
    const-string v1, "midtype"

    .line 207
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->u()I

    .line 210
    move-result v2

    .line 211
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 214
    move-result v1

    .line 215
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->y(I)V

    .line 218
    const-string v1, "poiTypeName"

    .line 220
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->w()Ljava/lang/String;

    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->A(Ljava/lang/String;)V

    .line 231
    const-string v1, "distance"

    .line 233
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->getDistance()I

    .line 236
    move-result v2

    .line 237
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 240
    move-result p0

    .line 241
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;->setDistance(I)V

    .line 244
    return-object v0
.end method
