.class public final Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;)Lorg/json/JSONObject;
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
    const-string v1, "actionType"

    .line 57
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getActionType()I

    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string v1, "strategy"

    .line 66
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getStrategy()I

    .line 69
    move-result v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const-string v1, "dev"

    .line 75
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getDev()I

    .line 78
    move-result v2

    .line 79
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getStartProtocolPoi()Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)Lorg/json/JSONObject;

    .line 89
    move-result-object v1

    .line 90
    const-string v2, "startProtocolPoi"

    .line 92
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getEndProtocolPoi()Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 98
    move-result-object v1

    .line 99
    invoke-static {v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)Lorg/json/JSONObject;

    .line 102
    move-result-object v1

    .line 103
    const-string v2, "endProtocolPoi"

    .line 105
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getMidProtocolPois()Ljava/util/List;

    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_3

    .line 114
    new-instance v1, Lorg/json/JSONArray;

    .line 116
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getMidProtocolPois()Ljava/util/List;

    .line 122
    move-result-object v2

    .line 123
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    move-result-object v2

    .line 127
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_2

    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;

    .line 139
    if-eqz v3, :cond_1

    .line 141
    invoke-static {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/protocol/model/item/ProtocolPoi;)Lorg/json/JSONObject;

    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 148
    goto :goto_0

    .line 149
    :cond_2
    const-string v2, "midProtocolPois"

    .line 151
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    :cond_3
    const-string v1, "newStrategy"

    .line 156
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getNewStrategy()I

    .line 159
    move-result v2

    .line 160
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    const-string v1, "json"

    .line 165
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;->getJson()Ljava/lang/String;

    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    return-object v0
.end method
