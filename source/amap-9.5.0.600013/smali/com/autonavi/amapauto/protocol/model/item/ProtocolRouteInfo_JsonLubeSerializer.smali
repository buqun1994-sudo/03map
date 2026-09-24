.class public final Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;)Lorg/json/JSONObject;
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
    const-string v1, "viaPOItime"

    .line 12
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->p:I

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    const-string v1, "viaPOIdistance"

    .line 19
    iget v2, p0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->q:I

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    const-string v1, "packageName"

    .line 26
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v1, "clientPackageName"

    .line 35
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v1, "callbackId"

    .line 44
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 47
    move-result v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    const-string v1, "timeStamp"

    .line 53
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 56
    move-result-wide v2

    .line 57
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 60
    const-string v1, "var1"

    .line 62
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v1, "version"

    .line 71
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->F()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v1, "method"

    .line 80
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->t()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v1, "routePreference"

    .line 89
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->w()I

    .line 92
    move-result v2

    .line 93
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    const-string v1, "time"

    .line 98
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->y()D

    .line 101
    move-result-wide v2

    .line 102
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 105
    const-string v1, "distance"

    .line 107
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->r()D

    .line 110
    move-result-wide v2

    .line 111
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 114
    const-string v1, "timeAuto"

    .line 116
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->z()Ljava/lang/String;

    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v1, "distanceAuto"

    .line 125
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->s()Ljava/lang/String;

    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v1, "trafficLights"

    .line 134
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->E()I

    .line 137
    move-result v2

    .line 138
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    const-string v1, "tolls"

    .line 143
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->C()I

    .line 146
    move-result v2

    .line 147
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    const-string v1, "json"

    .line 152
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->getJson()Ljava/lang/String;

    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v1, "tmcSize"

    .line 161
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->B()I

    .line 164
    move-result v2

    .line 165
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    const-string v1, "tmcSegments"

    .line 170
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->A()Ljava/lang/String;

    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v1, "viaCityNumbers"

    .line 179
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->G()I

    .line 182
    move-result v2

    .line 183
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->v()Ljava/util/ArrayList;

    .line 189
    move-result-object v1

    .line 190
    if-eqz v1, :cond_3

    .line 192
    new-instance v1, Lorg/json/JSONArray;

    .line 194
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 197
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->v()Ljava/util/ArrayList;

    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 204
    move-result-object v2

    .line 205
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_2

    .line 211
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    move-result-object v3

    .line 215
    check-cast v3, Lcom/autonavi/amapauto/protocol/model/item/ProtocolCityInfo;

    .line 217
    if-eqz v3, :cond_1

    .line 219
    invoke-static {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolCityInfo_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/protocol/model/item/ProtocolCityInfo;)Lorg/json/JSONObject;

    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 226
    goto :goto_0

    .line 227
    :cond_2
    const-string v2, "protocolCityInfos"

    .line 229
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    :cond_3
    const-string v1, "oddNum"

    .line 234
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->u()I

    .line 237
    move-result v2

    .line 238
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    const-string v1, "totalOddDistance"

    .line 243
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->D()Ljava/lang/String;

    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v1, "newStrategy"

    .line 252
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->getNewStrategy()I

    .line 255
    move-result v2

    .line 256
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 259
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->x()Ljava/util/ArrayList;

    .line 262
    move-result-object v1

    .line 263
    if-eqz v1, :cond_5

    .line 265
    new-instance v1, Lorg/json/JSONArray;

    .line 267
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 270
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->x()Ljava/util/ArrayList;

    .line 273
    move-result-object p0

    .line 274
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 277
    move-result-object p0

    .line 278
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_4

    .line 284
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    move-result-object v2

    .line 288
    check-cast v2, Ljava/lang/String;

    .line 290
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 293
    goto :goto_1

    .line 294
    :cond_4
    const-string p0, "streetNames"

    .line 296
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    :cond_5
    return-object v0
.end method
