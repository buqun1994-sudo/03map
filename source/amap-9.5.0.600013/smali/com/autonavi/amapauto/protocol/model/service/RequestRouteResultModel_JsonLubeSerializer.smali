.class public final Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;)Lorg/json/JSONObject;
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
    const-string v1, "count"

    .line 57
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->getCount()I

    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string v1, "json"

    .line 66
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->getJson()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->x()Ljava/util/ArrayList;

    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_3

    .line 79
    new-instance v1, Lorg/json/JSONArray;

    .line 81
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 84
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->x()Ljava/util/ArrayList;

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object v2

    .line 92
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_2

    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;

    .line 104
    if-eqz v3, :cond_1

    .line 106
    invoke-static {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;)Lorg/json/JSONObject;

    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    const-string v2, "protocolRouteInfos"

    .line 116
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_3
    const-string v1, "fromPoiName"

    .line 121
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->u()Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v1, "fromPoiAddr"

    .line 130
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->r()Ljava/lang/String;

    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v1, "fromPoiLongitude"

    .line 139
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->t()D

    .line 142
    move-result-wide v2

    .line 143
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 146
    const-string v1, "fromPoiLatitude"

    .line 148
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->s()D

    .line 151
    move-result-wide v2

    .line 152
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 155
    const-string v1, "midPoisNum"

    .line 157
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->w()I

    .line 160
    move-result v2

    .line 161
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    const-string v1, "midPoiArray"

    .line 166
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->v()Ljava/lang/String;

    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v1, "toPoiName"

    .line 175
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->B()Ljava/lang/String;

    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v1, "toPoiAddr"

    .line 184
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->y()Ljava/lang/String;

    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v1, "toPoiLongitude"

    .line 193
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->A()D

    .line 196
    move-result-wide v2

    .line 197
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 200
    const-string v1, "toPoiLatitude"

    .line 202
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->z()D

    .line 205
    move-result-wide v2

    .line 206
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 209
    return-object v0
.end method
