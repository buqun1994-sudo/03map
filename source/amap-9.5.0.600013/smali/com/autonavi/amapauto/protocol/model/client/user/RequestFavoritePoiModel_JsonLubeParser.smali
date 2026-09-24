.class public final Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v6, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;

    .line 7
    const/4 v1, 0x0

    .line 8
    const-wide/16 v2, 0x0

    .line 10
    const-wide/16 v4, 0x0

    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;-><init>(IDD)V

    .line 16
    const-string v0, "clientPackageName"

    .line 18
    invoke-virtual {v6}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v6, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 29
    const-string v0, "packageName"

    .line 31
    invoke-virtual {v6}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v6, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 42
    const-string v0, "callbackId"

    .line 44
    invoke-virtual {v6}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 47
    move-result v1

    .line 48
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 51
    move-result v0

    .line 52
    invoke-virtual {v6, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 55
    const-string v0, "timeStamp"

    .line 57
    invoke-virtual {v6}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 60
    move-result-wide v1

    .line 61
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 64
    move-result-wide v0

    .line 65
    invoke-virtual {v6, v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 68
    const-string v0, "var1"

    .line 70
    invoke-virtual {v6}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v6, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 81
    const-string v0, "favoriteType"

    .line 83
    invoke-virtual {v6}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getFavoriteType()I

    .line 86
    move-result v1

    .line 87
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 90
    move-result v0

    .line 91
    invoke-virtual {v6, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setFavoriteType(I)V

    .line 94
    const-string v0, "poiName"

    .line 96
    invoke-virtual {v6}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getPoiName()Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v6, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setPoiName(Ljava/lang/String;)V

    .line 107
    const-string v0, "longitude"

    .line 109
    invoke-virtual {v6}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getLongitude()D

    .line 112
    move-result-wide v1

    .line 113
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 116
    move-result-wide v0

    .line 117
    invoke-virtual {v6, v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setLongitude(D)V

    .line 120
    const-string v0, "latitude"

    .line 122
    invoke-virtual {v6}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getLatitude()D

    .line 125
    move-result-wide v1

    .line 126
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 129
    move-result-wide v0

    .line 130
    invoke-virtual {v6, v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setLatitude(D)V

    .line 133
    const-string v0, "entryLon"

    .line 135
    invoke-virtual {v6}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getEntryLon()D

    .line 138
    move-result-wide v1

    .line 139
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 142
    move-result-wide v0

    .line 143
    invoke-virtual {v6, v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setEntryLon(D)V

    .line 146
    const-string v0, "entryLat"

    .line 148
    invoke-virtual {v6}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getEntryLat()D

    .line 151
    move-result-wide v1

    .line 152
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 155
    move-result-wide v0

    .line 156
    invoke-virtual {v6, v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setEntryLat(D)V

    .line 159
    const-string v0, "poiAddress"

    .line 161
    invoke-virtual {v6}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getPoiAddress()Ljava/lang/String;

    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v6, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setPoiAddress(Ljava/lang/String;)V

    .line 172
    const-string v0, "isDev"

    .line 174
    invoke-virtual {v6}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->isDev()Z

    .line 177
    move-result v1

    .line 178
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 181
    move-result v0

    .line 182
    invoke-virtual {v6, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setDev(Z)V

    .line 185
    const-string v0, "poiType"

    .line 187
    invoke-virtual {v6}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getPoiType()Ljava/lang/String;

    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v6, v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setPoiType(Ljava/lang/String;)V

    .line 198
    const-string v0, "poiId"

    .line 200
    invoke-virtual {v6}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->getPoiId()Ljava/lang/String;

    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    move-result-object p0

    .line 208
    invoke-virtual {v6, p0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;->setPoiId(Ljava/lang/String;)V

    .line 211
    return-object v6
.end method
