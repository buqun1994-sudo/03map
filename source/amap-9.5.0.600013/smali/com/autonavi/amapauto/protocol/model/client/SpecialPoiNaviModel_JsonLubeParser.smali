.class public final Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1, v1}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;-><init>(II)V

    .line 11
    const-string v2, "clientPackageName"

    .line 13
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 24
    const-string v2, "packageName"

    .line 26
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 37
    const-string v2, "callbackId"

    .line 39
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 42
    move-result v3

    .line 43
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 46
    move-result v2

    .line 47
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 50
    const-string v2, "timeStamp"

    .line 52
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 55
    move-result-wide v3

    .line 56
    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 59
    move-result-wide v2

    .line 60
    invoke-virtual {v0, v2, v3}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 63
    const-string v2, "var1"

    .line 65
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 76
    const-string v2, "destType"

    .line 78
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->getDestType()I

    .line 81
    move-result v3

    .line 82
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 85
    move-result v2

    .line 86
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->setDestType(I)V

    .line 89
    const-string v2, "directNavi"

    .line 91
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->getDirectNavi()I

    .line 94
    move-result v3

    .line 95
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 98
    move-result v2

    .line 99
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->setDirectNavi(I)V

    .line 102
    const-string v2, "strategy"

    .line 104
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->getStrategy()I

    .line 107
    move-result v3

    .line 108
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 111
    move-result v2

    .line 112
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->setStrategy(I)V

    .line 115
    const-string v2, "dev"

    .line 117
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->getDev()I

    .line 120
    move-result v3

    .line 121
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 124
    move-result v2

    .line 125
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->setDev(I)V

    .line 128
    const-string v2, "midProtocolPois"

    .line 130
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 133
    move-result-object v2

    .line 134
    if-eqz v2, :cond_2

    .line 136
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 139
    move-result v3

    .line 140
    new-instance v4, Ljava/util/ArrayList;

    .line 142
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    :goto_0
    if-ge v1, v3, :cond_1

    .line 147
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 150
    move-result-object v5

    .line 151
    invoke-static {v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v1, v1, 0x1

    .line 160
    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v0, v4}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->setMidProtocolPois(Ljava/util/List;)V

    .line 164
    :cond_2
    const-string v1, "newStrategy"

    .line 166
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->getNewStrategy()I

    .line 169
    move-result v2

    .line 170
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 173
    move-result v1

    .line 174
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->setNewStrategy(I)V

    .line 177
    const-string v1, "count"

    .line 179
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->getCount()I

    .line 182
    move-result v2

    .line 183
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 186
    move-result p0

    .line 187
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;->setCount(I)V

    .line 190
    return-object v0
.end method
