.class public final Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;-><init>()V

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
    const-string v1, "count"

    .line 77
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->getCount()I

    .line 80
    move-result v2

    .line 81
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->setCount(I)V

    .line 88
    const-string v1, "json"

    .line 90
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->getJson()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->setJson(Ljava/lang/String;)V

    .line 101
    const-string v1, "protocolRouteInfos"

    .line 103
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 106
    move-result-object v1

    .line 107
    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 112
    move-result v2

    .line 113
    new-instance v3, Ljava/util/ArrayList;

    .line 115
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    const/4 v4, 0x0

    .line 119
    :goto_0
    if-ge v4, v2, :cond_1

    .line 121
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 124
    move-result-object v5

    .line 125
    invoke-static {v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;

    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 134
    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v0, v3}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->I(Ljava/util/ArrayList;)V

    .line 138
    :cond_2
    const-string v1, "fromPoiName"

    .line 140
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->u()Ljava/lang/String;

    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->F(Ljava/lang/String;)V

    .line 151
    const-string v1, "fromPoiAddr"

    .line 153
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->r()Ljava/lang/String;

    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->C(Ljava/lang/String;)V

    .line 164
    const-string v1, "fromPoiLongitude"

    .line 166
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->t()D

    .line 169
    move-result-wide v2

    .line 170
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 173
    move-result-wide v1

    .line 174
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->E(D)V

    .line 177
    const-string v1, "fromPoiLatitude"

    .line 179
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->s()D

    .line 182
    move-result-wide v2

    .line 183
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 186
    move-result-wide v1

    .line 187
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->D(D)V

    .line 190
    const-string v1, "midPoisNum"

    .line 192
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->w()I

    .line 195
    move-result v2

    .line 196
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 199
    move-result v1

    .line 200
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->H(I)V

    .line 203
    const-string v1, "midPoiArray"

    .line 205
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->v()Ljava/lang/String;

    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->G(Ljava/lang/String;)V

    .line 216
    const-string v1, "toPoiName"

    .line 218
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->B()Ljava/lang/String;

    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->M(Ljava/lang/String;)V

    .line 229
    const-string v1, "toPoiAddr"

    .line 231
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->y()Ljava/lang/String;

    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->J(Ljava/lang/String;)V

    .line 242
    const-string v1, "toPoiLongitude"

    .line 244
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->A()D

    .line 247
    move-result-wide v2

    .line 248
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 251
    move-result-wide v1

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->L(D)V

    .line 255
    const-string v1, "toPoiLatitude"

    .line 257
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->z()D

    .line 260
    move-result-wide v2

    .line 261
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 264
    move-result-wide v1

    .line 265
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->K(D)V

    .line 268
    return-object v0
.end method
