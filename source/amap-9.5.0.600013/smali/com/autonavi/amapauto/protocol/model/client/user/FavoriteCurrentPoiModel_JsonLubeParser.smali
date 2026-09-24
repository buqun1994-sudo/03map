.class public final Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;-><init>()V

    .line 10
    const-string v1, "poiId"

    .line 12
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->poiId:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->poiId:Ljava/lang/String;

    .line 20
    const-string v1, "poiName"

    .line 22
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->poiName:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->poiName:Ljava/lang/String;

    .line 30
    const-string v1, "addr"

    .line 32
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->addr:Ljava/lang/String;

    .line 34
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->addr:Ljava/lang/String;

    .line 40
    const-string v1, "phone"

    .line 42
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->phone:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->phone:Ljava/lang/String;

    .line 50
    const-string v1, "lat"

    .line 52
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->lat:D

    .line 54
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 57
    move-result-wide v1

    .line 58
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->lat:D

    .line 60
    const-string v1, "lon"

    .line 62
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->lon:D

    .line 64
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 67
    move-result-wide v1

    .line 68
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->lon:D

    .line 70
    const-string v1, "clientPackageName"

    .line 72
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 83
    const-string v1, "packageName"

    .line 85
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 96
    const-string v1, "callbackId"

    .line 98
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 101
    move-result v2

    .line 102
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 105
    move-result v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 109
    const-string v1, "timeStamp"

    .line 111
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 114
    move-result-wide v2

    .line 115
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 118
    move-result-wide v1

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 122
    const-string v1, "var1"

    .line 124
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 135
    const-string v1, "isFavoriteSuccess"

    .line 137
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->getIsFavoriteSuccess()I

    .line 140
    move-result v2

    .line 141
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 144
    move-result p0

    .line 145
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;->setIsFavoriteSuccess(I)V

    .line 148
    return-object v0
.end method
