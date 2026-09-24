.class public final Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;-><init>()V

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
    const-string v1, "actionType"

    .line 77
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getActionType()I

    .line 80
    move-result v2

    .line 81
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setActionType(I)V

    .line 88
    const-string v1, "strategy"

    .line 90
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getStrategy()I

    .line 93
    move-result v2

    .line 94
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 97
    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setStrategy(I)V

    .line 101
    const-string v1, "dev"

    .line 103
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getDev()I

    .line 106
    move-result v2

    .line 107
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 110
    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setDev(I)V

    .line 114
    const-string v1, "startProtocolPoi"

    .line 116
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 119
    move-result-object v1

    .line 120
    invoke-static {v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setStartProtocolPoi(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)V

    .line 127
    const-string v1, "endProtocolPoi"

    .line 129
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 132
    move-result-object v1

    .line 133
    invoke-static {v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setEndProtocolPoi(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)V

    .line 140
    const-string v1, "midProtocolPois"

    .line 142
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 145
    move-result-object v1

    .line 146
    if-eqz v1, :cond_2

    .line 148
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 151
    move-result v2

    .line 152
    new-instance v3, Ljava/util/ArrayList;

    .line 154
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    const/4 v4, 0x0

    .line 158
    :goto_0
    if-ge v4, v2, :cond_1

    .line 160
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 163
    move-result-object v5

    .line 164
    invoke-static {v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v4, v4, 0x1

    .line 173
    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v0, v3}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setMidProtocolPois(Ljava/util/List;)V

    .line 177
    :cond_2
    const-string v1, "newStrategy"

    .line 179
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getNewStrategy()I

    .line 182
    move-result v2

    .line 183
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 186
    move-result v1

    .line 187
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setNewStrategy(I)V

    .line 190
    const-string v1, "json"

    .line 192
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getJson()Ljava/lang/String;

    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->setJson(Ljava/lang/String;)V

    .line 203
    return-object v0
.end method
