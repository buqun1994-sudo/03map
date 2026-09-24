.class public final Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;
    .locals 8

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v7, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;

    .line 7
    const-string v1, ""

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const-string v4, ""

    .line 13
    const-string v5, ""

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v0, v7

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    .line 20
    const-string v0, "clientPackageName"

    .line 22
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 33
    const-string v0, "packageName"

    .line 35
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 46
    const-string v0, "callbackId"

    .line 48
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 51
    move-result v1

    .line 52
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 55
    move-result v0

    .line 56
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 59
    const-string v0, "timeStamp"

    .line 61
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 64
    move-result-wide v1

    .line 65
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 68
    move-result-wide v0

    .line 69
    invoke-virtual {v7, v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 72
    const-string v0, "var1"

    .line 74
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 85
    const-string v0, "favoriteType"

    .line 87
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;->getFavoriteType()I

    .line 90
    move-result v1

    .line 91
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 94
    move-result v0

    .line 95
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;->setFavoriteType(I)V

    .line 98
    const-string v0, "poiId"

    .line 100
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;->getPoiId()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;->setPoiId(Ljava/lang/String;)V

    .line 111
    const-string v0, "favoritePoiName"

    .line 113
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;->s()Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;->v(Ljava/lang/String;)V

    .line 124
    const-string v0, "poiAddress"

    .line 126
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;->getPoiAddress()Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;->setPoiAddress(Ljava/lang/String;)V

    .line 137
    const-string v0, "poiDistance"

    .line 139
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;->t()I

    .line 142
    move-result v1

    .line 143
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 146
    move-result v0

    .line 147
    invoke-virtual {v7, v0}, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;->w(I)V

    .line 150
    const-string v0, "editType"

    .line 152
    invoke-virtual {v7}, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;->r()I

    .line 155
    move-result v1

    .line 156
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 159
    move-result p0

    .line 160
    invoke-virtual {v7, p0}, Lcom/autonavi/amapauto/protocol/model/service/user/ChangedFavoritePoiModel;->u(I)V

    .line 163
    return-object v7
.end method
