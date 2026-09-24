.class public final Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;)Lorg/json/JSONObject;
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
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->getCount()I

    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string v1, "startPOIName"

    .line 66
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->G()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "startPOIAddr"

    .line 75
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->D()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v1, "startPOILongitude"

    .line 84
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->F()D

    .line 87
    move-result-wide v2

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 91
    const-string v1, "startPOILatitude"

    .line 93
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->E()D

    .line 96
    move-result-wide v2

    .line 97
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 100
    const-string v1, "endPOIName"

    .line 102
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->x()Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v1, "endPOIAddr"

    .line 111
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->u()Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v1, "endPOILongitude"

    .line 120
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->w()D

    .line 123
    move-result-wide v2

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 127
    const-string v1, "endPOILatitude"

    .line 129
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->v()D

    .line 132
    move-result-wide v2

    .line 133
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 136
    const-string v1, "arrivePOILongitude"

    .line 138
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->getArrivePOILongitude()D

    .line 141
    move-result-wide v2

    .line 142
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 145
    const-string v1, "arrivePOILatitude"

    .line 147
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->getArrivePOILatitude()D

    .line 150
    move-result-wide v2

    .line 151
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 154
    const-string v1, "startPOIType"

    .line 156
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->H()Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v1, "endPOIType"

    .line 165
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->y()Ljava/lang/String;

    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v1, "arrivePOIType"

    .line 174
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->t()Ljava/lang/String;

    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v1, "viaNumbers"

    .line 183
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->I()I

    .line 186
    move-result v2

    .line 187
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    const-string v1, "routePreference"

    .line 192
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->C()I

    .line 195
    move-result v2

    .line 196
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->B()Ljava/util/ArrayList;

    .line 202
    move-result-object v1

    .line 203
    if-eqz v1, :cond_3

    .line 205
    new-instance v1, Lorg/json/JSONArray;

    .line 207
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 210
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->B()Ljava/util/ArrayList;

    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 217
    move-result-object v2

    .line 218
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    move-result v3

    .line 222
    if-eqz v3, :cond_2

    .line 224
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    move-result-object v3

    .line 228
    check-cast v3, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;

    .line 230
    if-eqz v3, :cond_1

    .line 232
    invoke-static {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;)Lorg/json/JSONObject;

    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 239
    goto :goto_0

    .line 240
    :cond_2
    const-string v2, "protocolViaPOIInfos"

    .line 242
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->A()Ljava/util/ArrayList;

    .line 248
    move-result-object v1

    .line 249
    if-eqz v1, :cond_6

    .line 251
    new-instance v1, Lorg/json/JSONArray;

    .line 253
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 256
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->A()Ljava/util/ArrayList;

    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 263
    move-result-object v2

    .line 264
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    move-result v3

    .line 268
    if-eqz v3, :cond_5

    .line 270
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    move-result-object v3

    .line 274
    check-cast v3, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;

    .line 276
    if-eqz v3, :cond_4

    .line 278
    invoke-static {v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;)Lorg/json/JSONObject;

    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 285
    goto :goto_1

    .line 286
    :cond_5
    const-string v2, "protocolRouteInfos"

    .line 288
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    :cond_6
    const-string v1, "json"

    .line 293
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->getJson()Ljava/lang/String;

    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v1, "newStrategy"

    .line 302
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->getNewStrategy()I

    .line 305
    move-result v2

    .line 306
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 309
    const-string v1, "endPoiid"

    .line 311
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->z()Ljava/lang/String;

    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v1, "arrivePOIDistance"

    .line 320
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->r()I

    .line 323
    move-result v2

    .line 324
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    const-string v1, "arrivePOIPhone"

    .line 329
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->s()Ljava/lang/String;

    .line 332
    move-result-object v2

    .line 333
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v1, "viaPOITotal"

    .line 338
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->J()I

    .line 341
    move-result p0

    .line 342
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 345
    return-object v0
.end method
