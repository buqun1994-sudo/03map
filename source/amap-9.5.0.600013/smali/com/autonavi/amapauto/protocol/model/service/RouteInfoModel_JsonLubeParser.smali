.class public final Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;-><init>()V

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
    const-string v1, "count"

    .line 77
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->getCount()I

    .line 80
    move-result v2

    .line 81
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->setCount(I)V

    .line 88
    const-string v1, "startPOIName"

    .line 90
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->G()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->Z(Ljava/lang/String;)V

    .line 101
    const-string v1, "startPOIAddr"

    .line 103
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->D()Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->W(Ljava/lang/String;)V

    .line 114
    const-string v1, "startPOILongitude"

    .line 116
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->F()D

    .line 119
    move-result-wide v2

    .line 120
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 123
    move-result-wide v1

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->Y(D)V

    .line 127
    const-string v1, "startPOILatitude"

    .line 129
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->E()D

    .line 132
    move-result-wide v2

    .line 133
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 136
    move-result-wide v1

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->X(D)V

    .line 140
    const-string v1, "endPOIName"

    .line 142
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->x()Ljava/lang/String;

    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->Q(Ljava/lang/String;)V

    .line 153
    const-string v1, "endPOIAddr"

    .line 155
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->u()Ljava/lang/String;

    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->N(Ljava/lang/String;)V

    .line 166
    const-string v1, "endPOILongitude"

    .line 168
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->w()D

    .line 171
    move-result-wide v2

    .line 172
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 175
    move-result-wide v1

    .line 176
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->P(D)V

    .line 179
    const-string v1, "endPOILatitude"

    .line 181
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->v()D

    .line 184
    move-result-wide v2

    .line 185
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 188
    move-result-wide v1

    .line 189
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->O(D)V

    .line 192
    const-string v1, "arrivePOILongitude"

    .line 194
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->getArrivePOILongitude()D

    .line 197
    move-result-wide v2

    .line 198
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 201
    move-result-wide v1

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->setArrivePOILongitude(D)V

    .line 205
    const-string v1, "arrivePOILatitude"

    .line 207
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->getArrivePOILatitude()D

    .line 210
    move-result-wide v2

    .line 211
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 214
    move-result-wide v1

    .line 215
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->setArrivePOILatitude(D)V

    .line 218
    const-string v1, "startPOIType"

    .line 220
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->H()Ljava/lang/String;

    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->a0(Ljava/lang/String;)V

    .line 231
    const-string v1, "endPOIType"

    .line 233
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->y()Ljava/lang/String;

    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->R(Ljava/lang/String;)V

    .line 244
    const-string v1, "arrivePOIType"

    .line 246
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->t()Ljava/lang/String;

    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->M(Ljava/lang/String;)V

    .line 257
    const-string v1, "viaNumbers"

    .line 259
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->I()I

    .line 262
    move-result v2

    .line 263
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 266
    move-result v1

    .line 267
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->b0(I)V

    .line 270
    const-string v1, "routePreference"

    .line 272
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->C()I

    .line 275
    move-result v2

    .line 276
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 279
    move-result v1

    .line 280
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->V(I)V

    .line 283
    const-string v1, "protocolViaPOIInfos"

    .line 285
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 288
    move-result-object v1

    .line 289
    const/4 v2, 0x0

    .line 290
    if-eqz v1, :cond_2

    .line 292
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 295
    move-result v3

    .line 296
    new-instance v4, Ljava/util/ArrayList;

    .line 298
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 301
    const/4 v5, 0x0

    .line 302
    :goto_0
    if-ge v5, v3, :cond_1

    .line 304
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 307
    move-result-object v6

    .line 308
    invoke-static {v6}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;

    .line 311
    move-result-object v6

    .line 312
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v5, v5, 0x1

    .line 317
    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {v0, v4}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->U(Ljava/util/ArrayList;)V

    .line 321
    :cond_2
    const-string v1, "protocolRouteInfos"

    .line 323
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 326
    move-result-object v1

    .line 327
    if-eqz v1, :cond_4

    .line 329
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 332
    move-result v3

    .line 333
    new-instance v4, Ljava/util/ArrayList;

    .line 335
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 338
    :goto_1
    if-ge v2, v3, :cond_3

    .line 340
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 343
    move-result-object v5

    .line 344
    invoke-static {v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;

    .line 347
    move-result-object v5

    .line 348
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v2, v2, 0x1

    .line 353
    goto :goto_1

    .line 354
    :cond_3
    invoke-virtual {v0, v4}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->T(Ljava/util/ArrayList;)V

    .line 357
    :cond_4
    const-string v1, "json"

    .line 359
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->getJson()Ljava/lang/String;

    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    move-result-object v1

    .line 367
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->setJson(Ljava/lang/String;)V

    .line 370
    const-string v1, "newStrategy"

    .line 372
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->getNewStrategy()I

    .line 375
    move-result v2

    .line 376
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 379
    move-result v1

    .line 380
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->setNewStrategy(I)V

    .line 383
    const-string v1, "endPoiid"

    .line 385
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->z()Ljava/lang/String;

    .line 388
    move-result-object v2

    .line 389
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    move-result-object v1

    .line 393
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->S(Ljava/lang/String;)V

    .line 396
    const-string v1, "arrivePOIDistance"

    .line 398
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->r()I

    .line 401
    move-result v2

    .line 402
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 405
    move-result v1

    .line 406
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->K(I)V

    .line 409
    const-string v1, "arrivePOIPhone"

    .line 411
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->s()Ljava/lang/String;

    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->L(Ljava/lang/String;)V

    .line 422
    const-string v1, "viaPOITotal"

    .line 424
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->J()I

    .line 427
    move-result v2

    .line 428
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 431
    move-result p0

    .line 432
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->c0(I)V

    .line 435
    return-object v0
.end method
