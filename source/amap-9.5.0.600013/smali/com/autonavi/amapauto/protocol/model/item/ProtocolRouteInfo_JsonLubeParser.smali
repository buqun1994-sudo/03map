.class public final Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;-><init>()V

    .line 10
    const-string v1, "viaPOItime"

    .line 12
    iget v2, v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->p:I

    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 17
    move-result v1

    .line 18
    iput v1, v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->p:I

    .line 20
    const-string v1, "viaPOIdistance"

    .line 22
    iget v2, v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->q:I

    .line 24
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 27
    move-result v1

    .line 28
    iput v1, v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->q:I

    .line 30
    const-string v1, "clientPackageName"

    .line 32
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 43
    const-string v1, "packageName"

    .line 45
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 56
    const-string v1, "callbackId"

    .line 58
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 61
    move-result v2

    .line 62
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 69
    const-string v1, "timeStamp"

    .line 71
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 74
    move-result-wide v2

    .line 75
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 78
    move-result-wide v1

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 82
    const-string v1, "var1"

    .line 84
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 95
    const-string v1, "version"

    .line 97
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->F()Ljava/lang/String;

    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->X(Ljava/lang/String;)V

    .line 108
    const-string v1, "method"

    .line 110
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->t()Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->L(Ljava/lang/String;)V

    .line 121
    const-string v1, "routePreference"

    .line 123
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->w()I

    .line 126
    move-result v2

    .line 127
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 130
    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->O(I)V

    .line 134
    const-string v1, "time"

    .line 136
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->y()D

    .line 139
    move-result-wide v2

    .line 140
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 143
    move-result-wide v1

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->Q(D)V

    .line 147
    const-string v1, "distance"

    .line 149
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->r()D

    .line 152
    move-result-wide v2

    .line 153
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 156
    move-result-wide v1

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->J(D)V

    .line 160
    const-string v1, "timeAuto"

    .line 162
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->z()Ljava/lang/String;

    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->R(Ljava/lang/String;)V

    .line 173
    const-string v1, "distanceAuto"

    .line 175
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->s()Ljava/lang/String;

    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->K(Ljava/lang/String;)V

    .line 186
    const-string v1, "trafficLights"

    .line 188
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->E()I

    .line 191
    move-result v2

    .line 192
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 195
    move-result v1

    .line 196
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->W(I)V

    .line 199
    const-string v1, "tolls"

    .line 201
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->C()I

    .line 204
    move-result v2

    .line 205
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 208
    move-result v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->U(I)V

    .line 212
    const-string v1, "json"

    .line 214
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->getJson()Ljava/lang/String;

    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->setJson(Ljava/lang/String;)V

    .line 225
    const-string v1, "tmcSize"

    .line 227
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->B()I

    .line 230
    move-result v2

    .line 231
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 234
    move-result v1

    .line 235
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->T(I)V

    .line 238
    const-string v1, "tmcSegments"

    .line 240
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->A()Ljava/lang/String;

    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->S(Ljava/lang/String;)V

    .line 251
    const-string v1, "viaCityNumbers"

    .line 253
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->G()I

    .line 256
    move-result v2

    .line 257
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 260
    move-result v1

    .line 261
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->Y(I)V

    .line 264
    const-string v1, "protocolCityInfos"

    .line 266
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 269
    move-result-object v1

    .line 270
    const/4 v2, 0x0

    .line 271
    if-eqz v1, :cond_2

    .line 273
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 276
    move-result v3

    .line 277
    new-instance v4, Ljava/util/ArrayList;

    .line 279
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    const/4 v5, 0x0

    .line 283
    :goto_0
    if-ge v5, v3, :cond_1

    .line 285
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 288
    move-result-object v6

    .line 289
    invoke-static {v6}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolCityInfo_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/item/ProtocolCityInfo;

    .line 292
    move-result-object v6

    .line 293
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v5, v5, 0x1

    .line 298
    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {v0, v4}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->N(Ljava/util/ArrayList;)V

    .line 302
    :cond_2
    const-string v1, "oddNum"

    .line 304
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->u()I

    .line 307
    move-result v3

    .line 308
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 311
    move-result v1

    .line 312
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->M(I)V

    .line 315
    const-string v1, "totalOddDistance"

    .line 317
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->D()Ljava/lang/String;

    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->V(Ljava/lang/String;)V

    .line 328
    const-string v1, "newStrategy"

    .line 330
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->getNewStrategy()I

    .line 333
    move-result v3

    .line 334
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 337
    move-result v1

    .line 338
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->setNewStrategy(I)V

    .line 341
    const-string v1, "streetNames"

    .line 343
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 346
    move-result-object p0

    .line 347
    if-eqz p0, :cond_4

    .line 349
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 352
    move-result v1

    .line 353
    new-instance v3, Ljava/util/ArrayList;

    .line 355
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 358
    :goto_1
    if-ge v2, v1, :cond_3

    .line 360
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 363
    move-result-object v4

    .line 364
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v2, v2, 0x1

    .line 369
    goto :goto_1

    .line 370
    :cond_3
    invoke-virtual {v0, v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->P(Ljava/util/ArrayList;)V

    .line 373
    :cond_4
    return-object v0
.end method
