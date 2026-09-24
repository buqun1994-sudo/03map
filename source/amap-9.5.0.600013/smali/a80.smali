.class public abstract La80;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p0

    .line 9
    aput-object p0, v0, v1

    .line 11
    const-string p0, "%06d"

    .line 13
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static b(Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;)Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;
    .locals 4

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;-><init>()V

    .line 6
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->distance:I

    .line 8
    int-to-double v1, v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->J(D)V

    .line 12
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->totalDistanceDes:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->K(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->labelText:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->L(Ljava/lang/String;)V

    .line 22
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->routePreference:I

    .line 24
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->O(I)V

    .line 27
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->time:J

    .line 29
    long-to-double v1, v1

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->Q(D)V

    .line 33
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->totalTimeDes:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->R(Ljava/lang/String;)V

    .line 38
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->tolls:I

    .line 40
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->U(I)V

    .line 43
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->oddNum:I

    .line 45
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->M(I)V

    .line 48
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->totalOddDistance:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->V(Ljava/lang/String;)V

    .line 53
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->trafficLights:I

    .line 55
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->W(I)V

    .line 58
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->getTmcSize()I

    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->T(I)V

    .line 65
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->getTmcInfosJson()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->S(Ljava/lang/String;)V

    .line 72
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->viaPOItime:I

    .line 74
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->a0(I)V

    .line 77
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->viaPOIdistance:I

    .line 79
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->Z(I)V

    .line 82
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->getRouteViaCityInfos()Ljava/util/ArrayList;

    .line 85
    move-result-object v1

    .line 86
    if-eqz v1, :cond_1

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    .line 90
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->getRouteViaCityInfos()Ljava/util/ArrayList;

    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object p0

    .line 101
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_0

    .line 107
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Lcom/autonavi/amapauto/jni/protocol/data/RouteViaCityInfo;

    .line 113
    new-instance v3, Lcom/autonavi/amapauto/protocol/model/item/ProtocolCityInfo;

    .line 115
    iget-object v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/RouteViaCityInfo;->viaCityName:Ljava/lang/String;

    .line 117
    invoke-direct {v3, v2}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolCityInfo;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 127
    move-result p0

    .line 128
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->Y(I)V

    .line 131
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->N(Ljava/util/ArrayList;)V

    .line 134
    :cond_1
    return-object v0
.end method

.method public static c(Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;)Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->getStartPoi()Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 13
    const-string v3, "FromPoiName"

    .line 15
    iget-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v3, "FromPoiAddr"

    .line 22
    iget-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v3, "FromPoiLongitude"

    .line 29
    iget-wide v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 31
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v3, "FromPoiLatitude"

    .line 40
    iget-wide v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 42
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v3, "FromPoiType"

    .line 51
    iget v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    .line 53
    invoke-static {v2}, La80;->a(I)Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->getEndPoi()Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_1

    .line 66
    const-string v3, "ToPoiName"

    .line 68
    iget-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v3, "ToPoiAddr"

    .line 75
    iget-object v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v3, "ToPoiLongitude"

    .line 82
    iget-wide v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 84
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v3, "ToPoiLatitude"

    .line 93
    iget-wide v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 95
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v3, "ToPoiType"

    .line 104
    iget v4, v2, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    .line 106
    invoke-static {v4}, La80;->a(I)Ljava/lang/String;

    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    .line 116
    move-result-object v2

    .line 117
    if-eqz v2, :cond_1

    .line 119
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 122
    move-result v3

    .line 123
    if-lez v3, :cond_1

    .line 125
    const-string v3, "ArrivePoiLatitude"

    .line 127
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 133
    iget-wide v4, v4, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->latitude:D

    .line 135
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 138
    const-string v3, "ArrivePoiLongitude"

    .line 140
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    move-result-object v4

    .line 144
    check-cast v4, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 146
    iget-wide v4, v4, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->longitude:D

    .line 148
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 151
    const-string v3, "ArrivePoiType"

    .line 153
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 159
    iget v2, v2, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->poiType:I

    .line 161
    invoke-static {v2}, La80;->a(I)Ljava/lang/String;

    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->getMidPois()Ljava/util/List;

    .line 171
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    const-string v3, "midPoisNum"

    .line 174
    if-eqz v2, :cond_4

    .line 176
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 179
    move-result v4

    .line 180
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    new-instance v3, Lorg/json/JSONArray;

    .line 185
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 188
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 191
    move-result-object v2

    .line 192
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_3

    .line 198
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    move-result-object v4

    .line 202
    check-cast v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 204
    if-eqz v4, :cond_2

    .line 206
    new-instance v5, Lorg/json/JSONObject;

    .line 208
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 211
    const-string v6, "MidPoiName"

    .line 213
    iget-object v7, v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 215
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v6, "MidPoiAddr"

    .line 220
    iget-object v7, v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 222
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v6, "MidPoiLongitude"

    .line 227
    iget-wide v7, v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 229
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 232
    move-result-object v7

    .line 233
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string v6, "MidPoiLatitude"

    .line 238
    iget-wide v7, v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 240
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 243
    move-result-object v7

    .line 244
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v6, "MidPoiType"

    .line 249
    iget v4, v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    .line 251
    invoke-static {v4}, La80;->a(I)Ljava/lang/String;

    .line 254
    move-result-object v4

    .line 255
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 261
    goto :goto_0

    .line 262
    :cond_3
    const-string v2, "midPoiArray"

    .line 264
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    goto :goto_1

    .line 268
    :cond_4
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 271
    :goto_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->getRouteList()Ljava/util/List;

    .line 274
    move-result-object p0

    .line 275
    if-eqz p0, :cond_8

    .line 277
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 280
    move-result v2

    .line 281
    const-string v3, "pathNum"

    .line 283
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 286
    new-instance v3, Lorg/json/JSONArray;

    .line 288
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 291
    const/4 v4, 0x0

    .line 292
    :goto_2
    if-ge v4, v2, :cond_7

    .line 294
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 297
    move-result-object v5

    .line 298
    check-cast v5, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;

    .line 300
    new-instance v6, Lorg/json/JSONObject;

    .line 302
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 305
    invoke-virtual {v5}, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->getStreetNames()Ljava/util/List;

    .line 308
    move-result-object v7

    .line 309
    new-instance v8, Lorg/json/JSONArray;

    .line 311
    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    const-string v9, "streetNamesSize"

    .line 316
    if-eqz v7, :cond_6

    .line 318
    :try_start_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 321
    move-result-object v10

    .line 322
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 325
    move-result v11

    .line 326
    if-eqz v11, :cond_5

    .line 328
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 331
    move-result-object v11

    .line 332
    check-cast v11, Ljava/lang/String;

    .line 334
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 337
    goto :goto_3

    .line 338
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 341
    move-result v7

    .line 342
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 345
    goto :goto_4

    .line 346
    :cond_6
    invoke-virtual {v6, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    :goto_4
    const-string v7, "method"

    .line 351
    iget-object v9, v5, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->labelText:Ljava/lang/String;

    .line 353
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v7, "streetNames"

    .line 358
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v7, "ditance"

    .line 363
    iget v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->distance:I

    .line 365
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 368
    const-string v7, "time"

    .line 370
    iget-wide v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->time:J

    .line 372
    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 375
    const-string v7, "oddNum"

    .line 377
    iget v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->oddNum:I

    .line 379
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 382
    const-string v7, "totalOddDistance"

    .line 384
    iget-object v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->totalOddDistance:Ljava/lang/String;

    .line 386
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    iget-object v7, v5, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->totalDistanceDes:Ljava/lang/String;

    .line 391
    iget-object v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->totalTimeDes:Ljava/lang/String;

    .line 393
    const-string v9, "distance_AUTO"

    .line 395
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string v7, "time_AUTO"

    .line 400
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    const-string v7, "viaPOItime"

    .line 405
    iget v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->viaPOItime:I

    .line 407
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 410
    const-string v7, "viaPOIdistance"

    .line 412
    iget v5, v5, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;->viaPOIdistance:I

    .line 414
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 417
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 420
    add-int/lit8 v4, v4, 0x1

    .line 422
    goto/16 :goto_2

    .line 424
    :cond_7
    const-string p0, "path_info"

    .line 426
    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 429
    goto :goto_5

    .line 430
    :catch_0
    move-exception p0

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    .line 433
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    const-string v3, "sendRouteResult = "

    .line 438
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 444
    move-result-object p0

    .line 445
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    move-result-object p0

    .line 452
    new-array v1, v1, [Ljava/lang/Object;

    .line 454
    const-string v2, "ProtocolModelUtils"

    .line 456
    invoke-static {v2, p0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    :cond_8
    :goto_5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 462
    move-result-object p0

    .line 463
    return-object p0
.end method

.method public static d(Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;)Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;
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
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->getRouteList()Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->setCount(I)V

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->getStartPoi()Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_2

    .line 29
    iget-object v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->Z(Ljava/lang/String;)V

    .line 34
    iget-object v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->W(Ljava/lang/String;)V

    .line 39
    iget-wide v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 41
    invoke-virtual {v0, v2, v3}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->Y(D)V

    .line 44
    iget-wide v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 46
    invoke-virtual {v0, v2, v3}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->X(D)V

    .line 49
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    .line 51
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->a0(Ljava/lang/String;)V

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->getEndPoi()Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_3

    .line 64
    iget-object v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->Q(Ljava/lang/String;)V

    .line 69
    iget-object v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->N(Ljava/lang/String;)V

    .line 74
    iget-wide v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 76
    invoke-virtual {v0, v2, v3}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->O(D)V

    .line 79
    iget-wide v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 81
    invoke-virtual {v0, v2, v3}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->P(D)V

    .line 84
    iget v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    .line 86
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->R(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_3

    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 102
    move-result v2

    .line 103
    if-lez v2, :cond_3

    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 112
    iget-wide v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->latitude:D

    .line 114
    invoke-virtual {v0, v3, v4}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->setArrivePOILatitude(D)V

    .line 117
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 123
    iget-wide v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->longitude:D

    .line 125
    invoke-virtual {v0, v3, v4}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->setArrivePOILongitude(D)V

    .line 128
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 134
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->poiType:I

    .line 136
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->M(Ljava/lang/String;)V

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->getMidPois()Ljava/util/List;

    .line 146
    move-result-object v1

    .line 147
    if-eqz v1, :cond_5

    .line 149
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 152
    move-result v2

    .line 153
    if-lez v2, :cond_5

    .line 155
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 158
    move-result v2

    .line 159
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->b0(I)V

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    .line 164
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 170
    move-result-object v1

    .line 171
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_4

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 183
    new-instance v4, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;

    .line 185
    invoke-direct {v4}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;-><init>()V

    .line 188
    iget-object v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 190
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->H(Ljava/lang/String;)V

    .line 193
    iget-object v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 195
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->D(Ljava/lang/String;)V

    .line 198
    iget-wide v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 200
    invoke-virtual {v4, v5, v6}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->F(D)V

    .line 203
    iget-wide v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 205
    invoke-virtual {v4, v5, v6}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->G(D)V

    .line 208
    iget v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    .line 210
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v4, v3}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->J(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    goto :goto_0

    .line 221
    :cond_4
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->U(Ljava/util/ArrayList;)V

    .line 224
    :cond_5
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->getRouteList()Ljava/util/List;

    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->getRoutePreference()I

    .line 231
    move-result p0

    .line 232
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->V(I)V

    .line 235
    if-eqz v1, :cond_7

    .line 237
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 240
    move-result p0

    .line 241
    if-lez p0, :cond_7

    .line 243
    new-instance p0, Ljava/util/ArrayList;

    .line 245
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 251
    move-result-object v1

    .line 252
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    move-result v2

    .line 256
    if-eqz v2, :cond_6

    .line 258
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    move-result-object v2

    .line 262
    check-cast v2, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;

    .line 264
    invoke-static {v2}, La80;->b(Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;)Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;

    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    goto :goto_1

    .line 272
    :cond_6
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->T(Ljava/util/ArrayList;)V

    .line 275
    :cond_7
    return-object v0
.end method

.method public static e(Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;)Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    if-eqz p0, :cond_6

    .line 8
    :try_start_0
    const-string v1, "FromPoiName"

    .line 10
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->G()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v1, "FromPoiAddr"

    .line 19
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->D()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v1, "FromPoiLongitude"

    .line 28
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->F()D

    .line 31
    move-result-wide v2

    .line 32
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v1, "FromPoiLatitude"

    .line 41
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->E()D

    .line 44
    move-result-wide v2

    .line 45
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v1, "FromPoiType"

    .line 54
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->H()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v1, "ToPoiName"

    .line 63
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->x()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v1, "ToPoiAddr"

    .line 72
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->u()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v1, "ToPoiLongitude"

    .line 81
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->w()D

    .line 84
    move-result-wide v2

    .line 85
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v1, "ToPoiLatitude"

    .line 94
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->v()D

    .line 97
    move-result-wide v2

    .line 98
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v1, "ToPoiType"

    .line 107
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->y()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v1, "endPoiid"

    .line 116
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->z()Ljava/lang/String;

    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v1, "ArrivePoiLatitude"

    .line 125
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->getArrivePOILatitude()D

    .line 128
    move-result-wide v2

    .line 129
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 132
    const-string v1, "ArrivePoiLongitude"

    .line 134
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->getArrivePOILongitude()D

    .line 137
    move-result-wide v2

    .line 138
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 141
    const-string v1, "ArrivePoiType"

    .line 143
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->t()Ljava/lang/String;

    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->B()Ljava/util/ArrayList;

    .line 153
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    const-string v2, "midPoisNum"

    .line 156
    const/4 v3, 0x0

    .line 157
    if-eqz v1, :cond_2

    .line 159
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 162
    move-result v4

    .line 163
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    new-instance v2, Lorg/json/JSONArray;

    .line 168
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 171
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 174
    move-result-object v1

    .line 175
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    move-result v4

    .line 179
    if-eqz v4, :cond_1

    .line 181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    move-result-object v4

    .line 185
    check-cast v4, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;

    .line 187
    if-eqz v4, :cond_0

    .line 189
    new-instance v5, Lorg/json/JSONObject;

    .line 191
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 194
    const-string v6, "MidPoiName"

    .line 196
    invoke-virtual {v4}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->x()Ljava/lang/String;

    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v6, "MidPoiAddr"

    .line 205
    invoke-virtual {v4}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->t()Ljava/lang/String;

    .line 208
    move-result-object v7

    .line 209
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v6, "MidPoiLongitude"

    .line 214
    invoke-virtual {v4}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->w()D

    .line 217
    move-result-wide v7

    .line 218
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 221
    move-result-object v7

    .line 222
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v6, "MidPoiLatitude"

    .line 227
    invoke-virtual {v4}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->v()D

    .line 230
    move-result-wide v7

    .line 231
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 234
    move-result-object v7

    .line 235
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v6, "MidPoiType"

    .line 240
    invoke-virtual {v4}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->z()Ljava/lang/String;

    .line 243
    move-result-object v7

    .line 244
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v6, "viaPoiid"

    .line 249
    invoke-virtual {v4}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->A()Ljava/lang/String;

    .line 252
    move-result-object v7

    .line 253
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v6, "viaEntryLongitude"

    .line 258
    invoke-virtual {v4}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->s()D

    .line 261
    move-result-wide v7

    .line 262
    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 265
    const-string v6, "viaEntryLatitude"

    .line 267
    invoke-virtual {v4}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->r()D

    .line 270
    move-result-wide v7

    .line 271
    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 274
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 277
    goto :goto_0

    .line 278
    :cond_1
    const-string v1, "midPoiArray"

    .line 280
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    goto :goto_1

    .line 284
    :cond_2
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 287
    :goto_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/RouteInfoModel;->A()Ljava/util/ArrayList;

    .line 290
    move-result-object p0

    .line 291
    if-eqz p0, :cond_6

    .line 293
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 296
    move-result v1

    .line 297
    const-string v2, "pathNum"

    .line 299
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 302
    new-instance v2, Lorg/json/JSONArray;

    .line 304
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 307
    const/4 v4, 0x0

    .line 308
    :goto_2
    if-ge v4, v1, :cond_5

    .line 310
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 313
    move-result-object v5

    .line 314
    check-cast v5, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;

    .line 316
    new-instance v6, Lorg/json/JSONObject;

    .line 318
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 321
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->x()Ljava/util/ArrayList;

    .line 324
    move-result-object v7

    .line 325
    new-instance v8, Lorg/json/JSONArray;

    .line 327
    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 330
    const-string v9, "streetNamesSize"

    .line 332
    if-eqz v7, :cond_4

    .line 334
    :try_start_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 337
    move-result-object v10

    .line 338
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 341
    move-result v11

    .line 342
    if-eqz v11, :cond_3

    .line 344
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 347
    move-result-object v11

    .line 348
    check-cast v11, Ljava/lang/String;

    .line 350
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 353
    goto :goto_3

    .line 354
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 357
    move-result v7

    .line 358
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 361
    goto :goto_4

    .line 362
    :cond_4
    invoke-virtual {v6, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 365
    :goto_4
    const-string v7, "method"

    .line 367
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->t()Ljava/lang/String;

    .line 370
    move-result-object v9

    .line 371
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string v7, "streetNames"

    .line 376
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    const-string v7, "ditance"

    .line 381
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->r()D

    .line 384
    move-result-wide v8

    .line 385
    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 388
    const-string v7, "time"

    .line 390
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->y()D

    .line 393
    move-result-wide v8

    .line 394
    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 397
    const-string v7, "oddNum"

    .line 399
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->u()I

    .line 402
    move-result v8

    .line 403
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 406
    const-string v7, "totalOddDistance"

    .line 408
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->D()Ljava/lang/String;

    .line 411
    move-result-object v8

    .line 412
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    const-string v7, "distance_AUTO"

    .line 417
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->s()Ljava/lang/String;

    .line 420
    move-result-object v8

    .line 421
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    const-string v7, "time_AUTO"

    .line 426
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->z()Ljava/lang/String;

    .line 429
    move-result-object v8

    .line 430
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    const-string v7, "viaPOItime"

    .line 435
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->I()I

    .line 438
    move-result v8

    .line 439
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 442
    const-string v7, "viaPOIdistance"

    .line 444
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;->H()I

    .line 447
    move-result v5

    .line 448
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 451
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 454
    add-int/lit8 v4, v4, 0x1

    .line 456
    goto/16 :goto_2

    .line 458
    :cond_5
    const-string p0, "path_info"

    .line 460
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 463
    :catch_0
    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 466
    move-result-object p0

    .line 467
    return-object p0
.end method

.method public static f(I)I
    .locals 2

    .line 1
    const/16 v0, 0x2727

    const/16 v1, 0x2724

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x2724

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x2719

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x272a

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x2729

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x2716

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x2715

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x2723

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x2714

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x2711

    :goto_0
    :pswitch_9
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method

.method public static g(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, La80;->h(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;I)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static h(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;I)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    new-instance p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 5
    const/16 p1, 0x2724

    .line 7
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v1, v0, :cond_2

    .line 16
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/search/SearchResultModel;

    .line 18
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchResultModel;-><init>()V

    .line 21
    const/4 v1, 0x3

    .line 22
    if-ne p1, v1, :cond_1

    .line 24
    invoke-static {p0}, La80;->l(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchResultModel;->setPoiResult(Ljava/lang/String;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p0}, La80;->r(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchResultModel;->setPoiResult(Ljava/lang/String;)V

    .line 39
    :goto_0
    move-object p0, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 43
    iget p0, p0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 45
    invoke-static {p0}, La80;->f(I)I

    .line 48
    move-result p0

    .line 49
    invoke-direct {p1, p0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 52
    move-object p0, p1

    .line 53
    :goto_1
    return-object p0
.end method

.method public static i(Ljava/lang/String;I)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 9
    const/16 p1, 0x2724

    .line 11
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/16 v0, 0x2710

    .line 17
    if-ne v0, p1, :cond_3

    .line 19
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/search/SearchResultModel;

    .line 21
    invoke-direct {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchResultModel;-><init>()V

    .line 24
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_2

    .line 30
    const-string v0, "poiResult"

    .line 32
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_1

    .line 38
    const/4 p0, 0x0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    :goto_0
    invoke-virtual {p1, p0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchResultModel;->setPoiResult(Ljava/lang/String;)V

    .line 47
    :cond_2
    move-object p0, p1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    new-instance p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 51
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 54
    :goto_1
    return-object p0
.end method

.method public static j(Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;)Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCameraDist()I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setCameraDist(I)V

    .line 17
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u()I

    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setCameraIndex(I)V

    .line 24
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCameraSpeed()I

    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setCameraSpeed(I)V

    .line 31
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCameraType()I

    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setCameraType(I)V

    .line 38
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getSapaDist()I

    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setSapaDist(I)V

    .line 45
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getSapaName()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setSapaName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getSapaNum()I

    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setSapaNum(I)V

    .line 59
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getSapaType()I

    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setSapaType(I)V

    .line 66
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v()I

    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setCarDirection(I)V

    .line 73
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w()D

    .line 76
    move-result-wide v1

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setCarLatitude(D)V

    .line 80
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->x()D

    .line 83
    move-result-wide v1

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setCarLongitude(D)V

    .line 87
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->y()I

    .line 90
    move-result v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setCurPointNum(I)V

    .line 94
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCurRoadName()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setCurRoadName(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->z()I

    .line 104
    move-result v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setCurSegNum(I)V

    .line 108
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->A()I

    .line 111
    move-result v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setCurSpeed(I)V

    .line 115
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->M()I

    .line 118
    move-result v1

    .line 119
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setIcon(I)V

    .line 122
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getLimitedSpeed()I

    .line 125
    move-result v1

    .line 126
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setLimitedSpeed(I)V

    .line 129
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->T()Ljava/lang/String;

    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setNextRoadName(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getType()I

    .line 139
    move-result v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setType(I)V

    .line 143
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->i0()I

    .line 146
    move-result v1

    .line 147
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setRouteRemainDis(I)V

    .line 150
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->k0()I

    .line 153
    move-result v1

    .line 154
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setRouteRemainTime(I)V

    .line 157
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->r0()I

    .line 160
    move-result v1

    .line 161
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setSegRemainTime(I)V

    .line 164
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->p0()I

    .line 167
    move-result v1

    .line 168
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setSegRemainDis(I)V

    .line 171
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d0()I

    .line 174
    move-result v1

    .line 175
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setRoundAboutNum(I)V

    .line 178
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e0()I

    .line 181
    move-result v1

    .line 182
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setRoundAllNum(I)V

    .line 185
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s0()I

    .line 188
    move-result v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setTrafficLightNum(I)V

    .line 192
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g0()I

    .line 195
    move-result v1

    .line 196
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setRouteAllDis(I)V

    .line 199
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->h0()I

    .line 202
    move-result v1

    .line 203
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setRouteAllTime(I)V

    .line 206
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->c0()I

    .line 209
    move-result v1

    .line 210
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setRoadType(I)V

    .line 213
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Q()Ljava/lang/String;

    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setNextNextRoadName(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->J()Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setEtaText(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->V()I

    .line 230
    move-result v1

    .line 231
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setNextSapaDist(I)V

    .line 234
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Y()I

    .line 237
    move-result v1

    .line 238
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setNextSapaType(I)V

    .line 241
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->X()Ljava/lang/String;

    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setNextSapaName(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->W()Ljava/lang/String;

    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setNextSapaDistAuto(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->L()Ljava/lang/String;

    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setExitNameInfo(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->K()Ljava/lang/String;

    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setExitDirectionInfo(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->o0()I

    .line 272
    move-result v1

    .line 273
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setSegAssistantAction(I)V

    .line 276
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->l0()Ljava/lang/String;

    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setRouteRemainTimeAuto(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->j0()Ljava/lang/String;

    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setRouteRemainDistanceAuto(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->n0()Ljava/lang/String;

    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setSapaDistAuto(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->q0()Ljava/lang/String;

    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setSegRemainDisAuto(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f0()I

    .line 307
    move-result v1

    .line 308
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setRoundaboutOutAngle(I)V

    .line 311
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Z()I

    .line 314
    move-result v1

    .line 315
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setNextSegRemainDis(I)V

    .line 318
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->b0()I

    .line 321
    move-result v1

    .line 322
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setNextSegRemainTime(I)V

    .line 325
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->U()I

    .line 328
    move-result v1

    .line 329
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setNextRoadProgressPrecent(I)V

    .line 332
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCameraPenalty()Z

    .line 335
    move-result v1

    .line 336
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setCameraPenalty(Z)V

    .line 339
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->S()Z

    .line 342
    move-result v1

    .line 343
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setNextRoadNOAOrNot(Z)V

    .line 346
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->N()Z

    .line 349
    move-result v1

    .line 350
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setNewCamera(Z)V

    .line 353
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getCameraID()I

    .line 356
    move-result v1

    .line 357
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setCameraID(I)V

    .line 360
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->H()Ljava/lang/String;

    .line 363
    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setEndPOIName(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->C()Ljava/lang/String;

    .line 370
    move-result-object v1

    .line 371
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setEndPOIAddr(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->I()Ljava/lang/String;

    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setEndPOIType(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->t()Ljava/lang/String;

    .line 384
    move-result-object v1

    .line 385
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setArrivePOIType(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->F()D

    .line 391
    move-result-wide v1

    .line 392
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setEndPOILatitude(D)V

    .line 395
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->G()D

    .line 398
    move-result-wide v1

    .line 399
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setEndPOILongitude(D)V

    .line 402
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getArrivePOILatitude()D

    .line 405
    move-result-wide v1

    .line 406
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setArrivePOILatitude(D)V

    .line 409
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->getArrivePOILongitude()D

    .line 412
    move-result-wide v1

    .line 413
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setArrivePOILongitude(D)V

    .line 416
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->x0()I

    .line 419
    move-result v1

    .line 420
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setViaPOItime(I)V

    .line 423
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w0()I

    .line 426
    move-result v1

    .line 427
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setViaPOIdistance(I)V

    .line 430
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->D()Ljava/lang/String;

    .line 433
    move-result-object v1

    .line 434
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setEndPOICityName(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->E()Ljava/lang/String;

    .line 440
    move-result-object v1

    .line 441
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setEndPOIDistrictName(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v0()Ljava/lang/String;

    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setViaPOIArrivalTime(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->R()I

    .line 454
    move-result v1

    .line 455
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setNextNextTurnIcon(I)V

    .line 458
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s()Ljava/lang/String;

    .line 461
    move-result-object v1

    .line 462
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setAddIcon(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->P()Ljava/lang/String;

    .line 468
    move-result-object v1

    .line 469
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setNextNextAddIcon(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->a0()Ljava/lang/String;

    .line 475
    move-result-object v1

    .line 476
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setNextSegRemainDisAuto(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->m0()I

    .line 482
    move-result p0

    .line 483
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->setRouteRemainTrafficLightNum(I)V

    .line 486
    return-object v0
.end method

.method public static k(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraDist()I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setCameraDist(I)V

    .line 17
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraIndex()I

    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->A0(I)V

    .line 24
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraSpeed()I

    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setCameraSpeed(I)V

    .line 31
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraType()I

    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setCameraType(I)V

    .line 38
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSapaDist()I

    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setSapaDist(I)V

    .line 45
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSapaName()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setSapaName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSapaNum()I

    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setSapaNum(I)V

    .line 59
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSapaType()I

    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setSapaType(I)V

    .line 66
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCarDirection()I

    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->B0(I)V

    .line 73
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCarLatitude()D

    .line 76
    move-result-wide v1

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->C0(D)V

    .line 80
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCarLongitude()D

    .line 83
    move-result-wide v1

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->D0(D)V

    .line 87
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurPointNum()I

    .line 90
    move-result v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->E0(I)V

    .line 94
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurRoadName()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setCurRoadName(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurSegNum()I

    .line 104
    move-result v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->F0(I)V

    .line 108
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCurSpeed()I

    .line 111
    move-result v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->G0(I)V

    .line 115
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getIcon()I

    .line 118
    move-result v1

    .line 119
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->S0(I)V

    .line 122
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getIcon()I

    .line 125
    move-result v1

    .line 126
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->U0(I)V

    .line 129
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getLimitedSpeed()I

    .line 132
    move-result v1

    .line 133
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setLimitedSpeed(I)V

    .line 136
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextRoadName()Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Z0(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getType()I

    .line 146
    move-result v1

    .line 147
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setType(I)V

    .line 150
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteRemainDis()I

    .line 153
    move-result v1

    .line 154
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->o1(I)V

    .line 157
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteRemainTime()I

    .line 160
    move-result v1

    .line 161
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->q1(I)V

    .line 164
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegRemainTime()I

    .line 167
    move-result v1

    .line 168
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->x1(I)V

    .line 171
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegRemainDis()I

    .line 174
    move-result v1

    .line 175
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->v1(I)V

    .line 178
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRoundAboutNum()I

    .line 181
    move-result v1

    .line 182
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->j1(I)V

    .line 185
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRoundAllNum()I

    .line 188
    move-result v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->k1(I)V

    .line 192
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getTrafficLightNum()I

    .line 195
    move-result v1

    .line 196
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->y1(I)V

    .line 199
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteAllDis()I

    .line 202
    move-result v1

    .line 203
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->m1(I)V

    .line 206
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteAllTime()I

    .line 209
    move-result v1

    .line 210
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->n1(I)V

    .line 213
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRoadType()I

    .line 216
    move-result v1

    .line 217
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->i1(I)V

    .line 220
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextSapaDist()I

    .line 223
    move-result v1

    .line 224
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->b1(I)V

    .line 227
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextSapaType()I

    .line 230
    move-result v1

    .line 231
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->e1(I)V

    .line 234
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextSapaName()Ljava/lang/String;

    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->d1(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextSapaDistAuto()Ljava/lang/String;

    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->c1(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getExitNameInfo()Ljava/lang/String;

    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->R0(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getExitDirectionInfo()Ljava/lang/String;

    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Q0(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegAssistantAction()I

    .line 265
    move-result v1

    .line 266
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->u1(I)V

    .line 269
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteRemainTimeAuto()Ljava/lang/String;

    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->r1(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteRemainDistanceAuto()Ljava/lang/String;

    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->p1(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSapaDistAuto()Ljava/lang/String;

    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->t1(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getSegRemainDisAuto()Ljava/lang/String;

    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->w1(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRoundaboutOutAngle()I

    .line 300
    move-result v1

    .line 301
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->l1(I)V

    .line 304
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextSegRemainDis()I

    .line 307
    move-result v1

    .line 308
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->f1(I)V

    .line 311
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextSegRemainTime()I

    .line 314
    move-result v1

    .line 315
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->h1(I)V

    .line 318
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getEtaText()Ljava/lang/String;

    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->P0(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextRoadProgressPrecent()I

    .line 328
    move-result v1

    .line 329
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->a1(I)V

    .line 332
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextNextRoadName()Ljava/lang/String;

    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->W0(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getEtaText()Ljava/lang/String;

    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->P0(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getTurnIconBitmap()Landroid/graphics/Bitmap;

    .line 349
    move-result-object v1

    .line 350
    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 355
    move-result v2

    .line 356
    if-nez v2, :cond_1

    .line 358
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 361
    move-result v2

    .line 362
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->B1(I)V

    .line 365
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 368
    move-result v2

    .line 369
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->A1(I)V

    .line 372
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->z1(Landroid/graphics/Bitmap;)V

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isCameraPenalty()Z

    .line 378
    move-result v1

    .line 379
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setCameraPenalty(Z)V

    .line 382
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isNextRoadNOAOrNot()Z

    .line 385
    move-result v1

    .line 386
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->Y0(Z)V

    .line 389
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isNewCamera()Z

    .line 392
    move-result v1

    .line 393
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->T0(Z)V

    .line 396
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getCameraID()I

    .line 399
    move-result v1

    .line 400
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setCameraID(I)V

    .line 403
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getEndPOIName()Ljava/lang/String;

    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->N0(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getEndPOIAddr()Ljava/lang/String;

    .line 413
    move-result-object v1

    .line 414
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->I0(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getEndPOIType()Ljava/lang/String;

    .line 420
    move-result-object v1

    .line 421
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->O0(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getArrivePOIType()Ljava/lang/String;

    .line 427
    move-result-object v1

    .line 428
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->z0(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getEndPOILatitude()D

    .line 434
    move-result-wide v1

    .line 435
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->L0(D)V

    .line 438
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getEndPOILongitude()D

    .line 441
    move-result-wide v1

    .line 442
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->M0(D)V

    .line 445
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getArrivePOILatitude()D

    .line 448
    move-result-wide v1

    .line 449
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setArrivePOILatitude(D)V

    .line 452
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getArrivePOILongitude()D

    .line 455
    move-result-wide v1

    .line 456
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->setArrivePOILongitude(D)V

    .line 459
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getViaPOItime()I

    .line 462
    move-result v1

    .line 463
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->E1(I)V

    .line 466
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getViaPOIdistance()I

    .line 469
    move-result v1

    .line 470
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->D1(I)V

    .line 473
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getEndPOICityName()Ljava/lang/String;

    .line 476
    move-result-object v1

    .line 477
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->J0(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getEndPOIDistrictName()Ljava/lang/String;

    .line 483
    move-result-object v1

    .line 484
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->K0(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getViaPOIArrivalTime()Ljava/lang/String;

    .line 490
    move-result-object v1

    .line 491
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->C1(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextNextTurnIcon()I

    .line 497
    move-result v1

    .line 498
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->X0(I)V

    .line 501
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getAddIcon()Ljava/lang/String;

    .line 504
    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->y0(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextNextAddIcon()Ljava/lang/String;

    .line 511
    move-result-object v1

    .line 512
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->V0(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getNextSegRemainDisAuto()Ljava/lang/String;

    .line 518
    move-result-object v1

    .line 519
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->g1(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getRouteRemainTrafficLightNum()I

    .line 525
    move-result p0

    .line 526
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;->s1(I)V

    .line 529
    return-object v0
.end method

.method public static l(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;)Ljava/lang/String;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getPois()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 9
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 12
    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    move-result v4

    .line 18
    if-lez v4, :cond_2

    .line 20
    const-string v4, "Count"

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    move-result v5

    .line 26
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    new-instance v4, Lorg/json/JSONArray;

    .line 31
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 34
    const/4 v5, 0x0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    move-result v6

    .line 39
    if-ge v5, v6, :cond_1

    .line 41
    new-instance v6, Lorg/json/JSONObject;

    .line 43
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 46
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v7

    .line 50
    check-cast v7, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 52
    const-string v8, "Poiid"

    .line 54
    invoke-virtual {v7}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getPoiid()Ljava/lang/String;

    .line 57
    move-result-object v9

    .line 58
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v8, "Poiname"

    .line 63
    iget-object v9, v7, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 65
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v8, "poi_distance"

    .line 70
    iget v9, v7, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->distance:I

    .line 72
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    const-string v8, "poi_addr"

    .line 77
    iget-object v9, v7, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 79
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v8, "Longitude"

    .line 84
    iget-wide v9, v7, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 86
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v8, "Latitude"

    .line 95
    iget-wide v9, v7, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 97
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 100
    move-result-object v9

    .line 101
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-virtual {v7}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getPoideepinfo()Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;

    .line 107
    move-result-object v8

    .line 108
    invoke-static {v8}, Lmc0;->d(Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;)Lorg/json/JSONObject;

    .line 111
    move-result-object v8

    .line 112
    if-eqz v8, :cond_0

    .line 114
    const-string v9, "biz_ext"

    .line 116
    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_0
    invoke-virtual {v7}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getChildPoiList()Ljava/util/List;

    .line 122
    move-result-object v8

    .line 123
    invoke-static {v6, v8}, La80;->m(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 126
    invoke-static {v6, v7}, La80;->p(Lorg/json/JSONObject;Lcom/autonavi/amapauto/jni/protocol/data/PoiData;)V

    .line 129
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 132
    add-int/lit8 v5, v5, 0x1

    .line 134
    goto :goto_0

    .line 135
    :cond_1
    const-string v0, "poi_info"

    .line 137
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getCategoryDataList()Ljava/util/List;

    .line 143
    move-result-object p0

    .line 144
    invoke-static {v3, p0}, La80;->n(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 147
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 150
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-object p0

    .line 152
    :cond_2
    return-object v1

    .line 153
    :catch_0
    move-exception p0

    .line 154
    const/4 v0, 0x1

    .line 155
    new-array v0, v0, [Ljava/lang/Object;

    .line 157
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 160
    move-result-object p0

    .line 161
    aput-object p0, v0, v2

    .line 163
    const-string p0, "ProtocolModelUtils"

    .line 165
    const-string v2, "JSONException searchByAlongWay={?}"

    .line 167
    invoke-static {p0, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    return-object v1
.end method

.method public static m(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 17

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "ProtocolModelUtils"

    .line 6
    const-string v3, "handleChildPoiList"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    if-eqz p1, :cond_5

    .line 13
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    goto/16 :goto_3

    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 22
    new-array v3, v1, [Ljava/lang/Object;

    .line 24
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 27
    move-result v4

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v4

    .line 32
    aput-object v4, v3, v0

    .line 34
    const-string v4, "handleChildPoiList childPoiData size:{?}"

    .line 36
    invoke-static {v2, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    new-instance v3, Lorg/json/JSONArray;

    .line 41
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 44
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v4

    .line 48
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_4

    .line 54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;

    .line 60
    new-instance v6, Lorg/json/JSONObject;

    .line 62
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 65
    iget-object v7, v5, Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;->poiid:Ljava/lang/String;

    .line 67
    const-string v8, "Poiid"

    .line 69
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v7, "Name"

    .line 74
    iget-object v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;->name:Ljava/lang/String;

    .line 76
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    new-array v7, v1, [Ljava/lang/Object;

    .line 81
    iget-object v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;->name:Ljava/lang/String;

    .line 83
    aput-object v8, v7, v0

    .line 85
    const-string v8, "handleChildPoiList childPoiData data.name:{?}"

    .line 87
    invoke-static {v2, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    const-string v7, "Address"

    .line 92
    iget-object v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;->address:Ljava/lang/String;

    .line 94
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    iget v7, v5, Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;->poitype:I

    .line 99
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 102
    move-result-object v7

    .line 103
    const-string v8, "Typecode"

    .line 105
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    new-instance v7, Ljava/math/BigDecimal;

    .line 110
    iget-wide v8, v5, Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;->latitude:D

    .line 112
    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    .line 115
    const/4 v8, 0x6

    .line 116
    const/4 v9, 0x4

    .line 117
    invoke-virtual {v7, v8, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    .line 124
    move-result-wide v10

    .line 125
    new-instance v7, Ljava/math/BigDecimal;

    .line 127
    iget-wide v12, v5, Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;->longitude:D

    .line 129
    invoke-direct {v7, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    .line 132
    invoke-virtual {v7, v8, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    .line 139
    move-result-wide v12

    .line 140
    const-string v7, "longitude"

    .line 142
    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 145
    const-string v7, "Latitude"

    .line 147
    invoke-virtual {v6, v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 150
    invoke-virtual {v5}, Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;->getEnteryList()Ljava/util/List;

    .line 153
    move-result-object v7

    .line 154
    if-eqz v7, :cond_2

    .line 156
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 159
    move-result v10

    .line 160
    if-lez v10, :cond_2

    .line 162
    new-instance v10, Lorg/json/JSONArray;

    .line 164
    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 167
    const/4 v11, 0x0

    .line 168
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 171
    move-result v12

    .line 172
    if-ge v11, v12, :cond_1

    .line 174
    new-instance v12, Ljava/math/BigDecimal;

    .line 176
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 179
    move-result-object v13

    .line 180
    check-cast v13, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 182
    iget-wide v13, v13, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->latitude:D

    .line 184
    invoke-direct {v12, v13, v14}, Ljava/math/BigDecimal;-><init>(D)V

    .line 187
    invoke-virtual {v12, v8, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 190
    move-result-object v12

    .line 191
    invoke-virtual {v12}, Ljava/math/BigDecimal;->doubleValue()D

    .line 194
    move-result-wide v12

    .line 195
    new-instance v14, Ljava/math/BigDecimal;

    .line 197
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    move-result-object v15

    .line 201
    check-cast v15, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 203
    move-object/from16 v16, v2

    .line 205
    iget-wide v1, v15, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->longitude:D

    .line 207
    invoke-direct {v14, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 210
    invoke-virtual {v14, v8, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 217
    move-result-wide v1

    .line 218
    new-instance v14, Lorg/json/JSONObject;

    .line 220
    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 223
    const-string v15, "entry_longitude"

    .line 225
    invoke-virtual {v14, v15, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 228
    const-string v15, "entry_latitude"

    .line 230
    invoke-virtual {v14, v15, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 233
    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 236
    const/4 v14, 0x3

    .line 237
    new-array v14, v14, [Ljava/lang/Object;

    .line 239
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    move-result-object v15

    .line 243
    aput-object v15, v14, v0

    .line 245
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 248
    move-result-object v1

    .line 249
    const/4 v2, 0x1

    .line 250
    aput-object v1, v14, v2

    .line 252
    const/4 v1, 0x2

    .line 253
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 256
    move-result-object v12

    .line 257
    aput-object v12, v14, v1

    .line 259
    const-string v1, "obejctToJson j = {?},entry_longitude = {?},entry_latitude = {?}"

    .line 261
    move-object/from16 v12, v16

    .line 263
    invoke-static {v12, v1, v14}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    add-int/lit8 v11, v11, 0x1

    .line 268
    move-object v2, v12

    .line 269
    const/4 v1, 0x1

    .line 270
    goto :goto_1

    .line 271
    :cond_1
    move-object v12, v2

    .line 272
    const/4 v2, 0x1

    .line 273
    const-string v1, "enteryList"

    .line 275
    invoke-virtual {v6, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    goto :goto_2

    .line 279
    :cond_2
    move-object v12, v2

    .line 280
    const/4 v2, 0x1

    .line 281
    :goto_2
    const-string v1, "distance"

    .line 283
    iget v7, v5, Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;->distance:I

    .line 285
    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 288
    const-string v1, "Tel"

    .line 290
    iget-object v7, v5, Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;->tel:Ljava/lang/String;

    .line 292
    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    invoke-virtual {v5}, Lcom/autonavi/amapauto/jni/protocol/data/ChildPoiData;->getPoideepinfo()Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;

    .line 298
    move-result-object v1

    .line 299
    invoke-static {v1}, Lmc0;->d(Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;)Lorg/json/JSONObject;

    .line 302
    move-result-object v1

    .line 303
    if-eqz v1, :cond_3

    .line 305
    const-string v5, "biz_ext"

    .line 307
    invoke-virtual {v6, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    :cond_3
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 313
    move-object v2, v12

    .line 314
    const/4 v1, 0x1

    .line 315
    goto/16 :goto_0

    .line 317
    :cond_4
    const-string v0, "childPoiList"

    .line 319
    move-object/from16 v1, p0

    .line 321
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    return-void

    .line 325
    :cond_5
    :goto_3
    move-object v12, v2

    .line 326
    const-string v1, "handleChildPoiList childPoiData is empty."

    .line 328
    new-array v0, v0, [Ljava/lang/Object;

    .line 330
    invoke-static {v12, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    return-void
.end method

.method public static n(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    .line 13
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    move-result v2

    .line 20
    if-ge v0, v2, :cond_1

    .line 22
    new-instance v2, Lorg/json/JSONObject;

    .line 24
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchCategoryData;

    .line 33
    iget-object v4, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchCategoryData;->name:Ljava/lang/String;

    .line 35
    const-string v5, "name"

    .line 37
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v4, "ctype"

    .line 42
    iget-object v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchCategoryData;->ctype:Ljava/lang/String;

    .line 44
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v4, "checkedvalue"

    .line 49
    iget-object v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchCategoryData;->checkedvalue:Ljava/lang/String;

    .line 51
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    iget-object v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchCategoryData;->itemDataList:Ljava/util/List;

    .line 56
    invoke-static {v2, v3}, La80;->o(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 59
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const-string p1, "categories"

    .line 67
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    return-void

    .line 71
    :cond_2
    :goto_1
    const-string p0, "handleSearchCategory() searchCategoryList is null"

    .line 73
    new-array p1, v0, [Ljava/lang/Object;

    .line 75
    const-string v0, "ProtocolModelUtils"

    .line 77
    invoke-static {v0, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public static o(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    .line 12
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_1

    .line 22
    new-instance v2, Lorg/json/JSONObject;

    .line 24
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 27
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchCategoryItemData;

    .line 33
    iget-object v4, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchCategoryItemData;->name:Ljava/lang/String;

    .line 35
    const-string v5, "name"

    .line 37
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v4, "value"

    .line 42
    iget-object v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchCategoryItemData;->value:Ljava/lang/String;

    .line 44
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    iget-object v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchCategoryItemData;->itemDataList:Ljava/util/List;

    .line 49
    invoke-static {v2, v3}, La80;->o(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 52
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const-string p1, "categoryItems"

    .line 60
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_2
    :goto_1
    return-void
.end method

.method public static p(Lorg/json/JSONObject;Lcom/autonavi/amapauto/jni/protocol/data/PoiData;)V
    .locals 5

    .line 1
    const-string v0, "entry_latitude"

    .line 3
    const-string v1, "entry_longitude"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    .line 11
    move-result-object v3

    .line 12
    if-eqz v3, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    .line 17
    move-result-object v3

    .line 18
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 21
    move-result v3

    .line 22
    if-gtz v3, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 35
    iget-wide v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->longitude:D

    .line 37
    invoke-virtual {p0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 40
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 46
    iget-wide v1, p1, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->latitude:D

    .line 48
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 51
    goto :goto_2

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-void

    .line 61
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    :goto_2
    return-void
.end method

.method public static q(Lcom/autonavi/amapauto/jni/protocol/data/FrequentInfoData;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    if-eqz p0, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/FrequentInfoData;->getPois()Ljava/util/List;

    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_1

    .line 14
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 17
    move-result v1

    .line 18
    const-string v2, "Count"

    .line 20
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    new-instance v2, Lorg/json/JSONArray;

    .line 25
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-ge v3, v1, :cond_0

    .line 31
    new-instance v4, Lorg/json/JSONObject;

    .line 33
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 36
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 42
    invoke-static {v4}, La80;->s(Lcom/autonavi/amapauto/jni/protocol/data/PoiData;)Lorg/json/JSONObject;

    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string p0, "Pois"

    .line 54
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    const/4 p0, 0x0

    .line 59
    return-object p0

    .line 60
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method

.method public static r(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;)Ljava/lang/String;
    .locals 20

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    if-eqz p0, :cond_7

    .line 8
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getPois()Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getCityList()Ljava/util/List;

    .line 15
    move-result-object v2

    .line 16
    if-eqz v1, :cond_4

    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    move-result v4

    .line 22
    const-string v5, "Count"

    .line 24
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    new-instance v5, Lorg/json/JSONArray;

    .line 29
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 32
    const/4 v6, 0x0

    .line 33
    :goto_0
    if-ge v6, v4, :cond_3

    .line 35
    new-instance v7, Lorg/json/JSONObject;

    .line 37
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 40
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v8

    .line 44
    check-cast v8, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 46
    const-string v9, "Poiid"

    .line 48
    invoke-virtual {v8}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getPoiid()Ljava/lang/String;

    .line 51
    move-result-object v10

    .line 52
    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v9, "Name"

    .line 57
    iget-object v10, v8, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 59
    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v9, "Address"

    .line 64
    iget-object v10, v8, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 66
    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v9, "Typecode"

    .line 71
    iget v10, v8, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    .line 73
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    move-result-object v10

    .line 77
    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    new-instance v9, Ljava/math/BigDecimal;

    .line 82
    iget-wide v10, v8, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 84
    invoke-direct {v9, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    .line 87
    const/4 v10, 0x4

    .line 88
    const/4 v11, 0x6

    .line 89
    invoke-virtual {v9, v11, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 92
    move-result-object v9

    .line 93
    invoke-virtual {v9}, Ljava/math/BigDecimal;->doubleValue()D

    .line 96
    move-result-wide v12

    .line 97
    new-instance v9, Ljava/math/BigDecimal;

    .line 99
    iget-wide v14, v8, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 101
    invoke-direct {v9, v14, v15}, Ljava/math/BigDecimal;-><init>(D)V

    .line 104
    invoke-virtual {v9, v11, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 107
    move-result-object v9

    .line 108
    invoke-virtual {v9}, Ljava/math/BigDecimal;->doubleValue()D

    .line 111
    move-result-wide v14

    .line 112
    const-string v9, "longitude"

    .line 114
    invoke-virtual {v7, v9, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 117
    const-string v9, "Latitude"

    .line 119
    invoke-virtual {v7, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 122
    invoke-virtual {v8}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    .line 125
    move-result-object v9

    .line 126
    if-eqz v9, :cond_1

    .line 128
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 131
    move-result v12

    .line 132
    if-lez v12, :cond_1

    .line 134
    new-instance v12, Lorg/json/JSONArray;

    .line 136
    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 139
    const/4 v13, 0x0

    .line 140
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 143
    move-result v14

    .line 144
    if-ge v13, v14, :cond_0

    .line 146
    new-instance v14, Ljava/math/BigDecimal;

    .line 148
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    move-result-object v15

    .line 152
    check-cast v15, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 154
    move/from16 v17, v4

    .line 156
    iget-wide v3, v15, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->latitude:D

    .line 158
    invoke-direct {v14, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    .line 161
    invoke-virtual {v14, v11, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    .line 168
    move-result-wide v3

    .line 169
    new-instance v14, Ljava/math/BigDecimal;

    .line 171
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    move-result-object v15

    .line 175
    check-cast v15, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 177
    iget-wide v10, v15, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->longitude:D

    .line 179
    invoke-direct {v14, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    .line 182
    const/4 v10, 0x4

    .line 183
    const/4 v11, 0x6

    .line 184
    invoke-virtual {v14, v11, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 187
    move-result-object v14

    .line 188
    invoke-virtual {v14}, Ljava/math/BigDecimal;->doubleValue()D

    .line 191
    move-result-wide v14

    .line 192
    new-instance v10, Lorg/json/JSONObject;

    .line 194
    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 197
    const-string v11, "entry_longitude"

    .line 199
    invoke-virtual {v10, v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 202
    const-string v11, "entry_latitude"

    .line 204
    invoke-virtual {v10, v11, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 207
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 210
    const-string v10, "ProtocolModelUtils"

    .line 212
    const-string v11, "obejctToJson j = {?},entry_longitude = {?},entry_latitude = {?}"

    .line 214
    move-object/from16 v18, v1

    .line 216
    const/4 v1, 0x3

    .line 217
    new-array v1, v1, [Ljava/lang/Object;

    .line 219
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    move-result-object v19

    .line 223
    const/16 v16, 0x0

    .line 225
    aput-object v19, v1, v16

    .line 227
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 230
    move-result-object v14

    .line 231
    const/4 v15, 0x1

    .line 232
    aput-object v14, v1, v15

    .line 234
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 237
    move-result-object v3

    .line 238
    const/4 v4, 0x2

    .line 239
    aput-object v3, v1, v4

    .line 241
    invoke-static {v10, v11, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    add-int/lit8 v13, v13, 0x1

    .line 246
    move/from16 v4, v17

    .line 248
    move-object/from16 v1, v18

    .line 250
    const/4 v10, 0x4

    .line 251
    const/4 v11, 0x6

    .line 252
    goto :goto_1

    .line 253
    :cond_0
    move-object/from16 v18, v1

    .line 255
    move/from16 v17, v4

    .line 257
    const/16 v16, 0x0

    .line 259
    const-string v1, "enteryList"

    .line 261
    invoke-virtual {v7, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    goto :goto_2

    .line 265
    :cond_1
    move-object/from16 v18, v1

    .line 267
    move/from16 v17, v4

    .line 269
    const/16 v16, 0x0

    .line 271
    :goto_2
    const-string v1, "distance"

    .line 273
    iget v3, v8, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->distance:I

    .line 275
    invoke-virtual {v7, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 278
    const-string v1, "Tel"

    .line 280
    iget-object v3, v8, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->tel:Ljava/lang/String;

    .line 282
    invoke-virtual {v7, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    invoke-virtual {v8}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getPoideepinfo()Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;

    .line 288
    move-result-object v1

    .line 289
    invoke-static {v1}, Lmc0;->d(Lcom/autonavi/amapauto/jni/protocol/data/DeepInfoData;)Lorg/json/JSONObject;

    .line 292
    move-result-object v1

    .line 293
    if-eqz v1, :cond_2

    .line 295
    const-string v3, "biz_ext"

    .line 297
    invoke-virtual {v7, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    :cond_2
    invoke-virtual {v8}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getChildPoiList()Ljava/util/List;

    .line 303
    move-result-object v1

    .line 304
    invoke-static {v7, v1}, La80;->m(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 307
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 310
    add-int/lit8 v6, v6, 0x1

    .line 312
    move/from16 v4, v17

    .line 314
    move-object/from16 v1, v18

    .line 316
    goto/16 :goto_0

    .line 318
    :cond_3
    const/16 v16, 0x0

    .line 320
    const-string v1, "Pois"

    .line 322
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    goto :goto_3

    .line 326
    :cond_4
    const/16 v16, 0x0

    .line 328
    :goto_3
    if-eqz v2, :cond_6

    .line 330
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 333
    move-result v1

    .line 334
    if-lez v1, :cond_6

    .line 336
    new-instance v1, Lorg/json/JSONObject;

    .line 338
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 341
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 344
    move-result v3

    .line 345
    const-string v4, "Citycount"

    .line 347
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 350
    new-instance v4, Lorg/json/JSONArray;

    .line 352
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 355
    const/4 v5, 0x0

    .line 356
    :goto_4
    if-ge v5, v3, :cond_5

    .line 358
    new-instance v6, Lorg/json/JSONObject;

    .line 360
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 363
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 366
    move-result-object v7

    .line 367
    check-cast v7, Lcom/autonavi/amapauto/jni/protocol/data/CitysuggestionData;

    .line 369
    const-string v8, "Cityname"

    .line 371
    iget-object v9, v7, Lcom/autonavi/amapauto/jni/protocol/data/CitysuggestionData;->cityname:Ljava/lang/String;

    .line 373
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    const-string v8, "Citynum"

    .line 378
    iget v7, v7, Lcom/autonavi/amapauto/jni/protocol/data/CitysuggestionData;->citynum:I

    .line 380
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 383
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 386
    add-int/lit8 v5, v5, 0x1

    .line 388
    goto :goto_4

    .line 389
    :cond_5
    const-string v2, "SuggestionCityDetail"

    .line 391
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string v2, "Citysuggestion"

    .line 396
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;->getCategoryDataList()Ljava/util/List;

    .line 402
    move-result-object v1

    .line 403
    invoke-static {v0, v1}, La80;->n(Lorg/json/JSONObject;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    goto :goto_5

    .line 407
    :catch_0
    const/4 v0, 0x0

    .line 408
    return-object v0

    .line 409
    :cond_7
    :goto_5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 412
    move-result-object v0

    .line 413
    return-object v0
.end method

.method public static s(Lcom/autonavi/amapauto/jni/protocol/data/PoiData;)Lorg/json/JSONObject;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "ProtocolModelUtils"

    .line 6
    const-string v3, "[parsePoiDataToJson] start"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Lorg/json/JSONObject;

    .line 13
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 16
    if-nez p0, :cond_0

    .line 18
    :try_start_0
    const-string p0, "[parsePoiDataToJson]poiData == null"

    .line 20
    new-array v3, v0, [Ljava/lang/Object;

    .line 22
    invoke-static {v2, p0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :cond_0
    const-string v3, "poiId"

    .line 29
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getPoiid()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v3, "poiName"

    .line 38
    iget-object v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 40
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v3, "address"

    .line 45
    iget-object v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v3, "Typecode"

    .line 52
    iget v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    .line 54
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    new-instance v3, Ljava/math/BigDecimal;

    .line 59
    iget-wide v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 61
    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    .line 64
    const/4 v4, 0x4

    .line 65
    const/4 v5, 0x6

    .line 66
    invoke-virtual {v3, v5, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    .line 73
    move-result-wide v6

    .line 74
    new-instance v3, Ljava/math/BigDecimal;

    .line 76
    iget-wide v8, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 78
    invoke-direct {v3, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    .line 81
    invoke-virtual {v3, v5, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    .line 88
    move-result-wide v8

    .line 89
    const-string v3, "longitude"

    .line 91
    invoke-virtual {v1, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 94
    const-string v3, "latitude"

    .line 96
    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 99
    const-string v3, "poitype"

    .line 101
    iget v6, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->homecopType:I

    .line 103
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    const-string v3, "extra_poitype"

    .line 108
    iget v6, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    .line 110
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    .line 116
    move-result-object v3

    .line 117
    if-eqz v3, :cond_1

    .line 119
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 122
    move-result v6

    .line 123
    if-lez v6, :cond_1

    .line 125
    new-instance v6, Ljava/math/BigDecimal;

    .line 127
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    move-result-object v7

    .line 131
    check-cast v7, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 133
    iget-wide v7, v7, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->latitude:D

    .line 135
    invoke-direct {v6, v7, v8}, Ljava/math/BigDecimal;-><init>(D)V

    .line 138
    invoke-virtual {v6, v5, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    .line 145
    move-result-wide v6

    .line 146
    new-instance v8, Ljava/math/BigDecimal;

    .line 148
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 154
    iget-wide v9, v3, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->longitude:D

    .line 156
    invoke-direct {v8, v9, v10}, Ljava/math/BigDecimal;-><init>(D)V

    .line 159
    invoke-virtual {v8, v5, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    .line 166
    move-result-wide v3

    .line 167
    const-string v5, "entry_longitude"

    .line 169
    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 172
    const-string v3, "entry_latitude"

    .line 174
    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 177
    :cond_1
    const-string v3, "Distance"

    .line 179
    iget v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->distance:I

    .line 181
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    const-string v3, "Time"

    .line 186
    iget-wide v4, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->time:J

    .line 188
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 191
    const-string v3, "Tel"

    .line 193
    iget-object p0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->tel:Ljava/lang/String;

    .line 195
    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_0

    .line 199
    :catch_0
    move-exception p0

    .line 200
    const-string v3, "Exception"

    .line 202
    new-array v4, v0, [Ljava/lang/Object;

    .line 204
    invoke-static {v2, v3, p0, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 207
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 210
    move-result-object p0

    .line 211
    const/4 v3, 0x1

    .line 212
    new-array v3, v3, [Ljava/lang/Object;

    .line 214
    aput-object p0, v3, v0

    .line 216
    const-string p0, "[parsePoiDataToJson] end json:{?}"

    .line 218
    invoke-static {v2, p0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    return-object v1
.end method

.method public static t(Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;)Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;
    .locals 8

    .line 1
    if-eqz p0, :cond_5

    .line 3
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->getRouteList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->getRouteList()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;

    .line 15
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;-><init>()V

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->setCount(I)V

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;

    .line 46
    invoke-static {v3}, La80;->b(Lcom/autonavi/amapauto/jni/protocol/data/RouteInfoData;)Lcom/autonavi/amapauto/protocol/model/item/ProtocolRouteInfo;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->getStartPoi()Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 60
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 62
    invoke-virtual {v1, v3}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->F(Ljava/lang/String;)V

    .line 65
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v3}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->C(Ljava/lang/String;)V

    .line 70
    iget-wide v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 72
    invoke-virtual {v1, v3, v4}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->E(D)V

    .line 75
    iget-wide v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 77
    invoke-virtual {v1, v3, v4}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->D(D)V

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->getEndPoi()Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_2

    .line 86
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 88
    invoke-virtual {v1, v3}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->M(Ljava/lang/String;)V

    .line 91
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 93
    invoke-virtual {v1, v3}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->J(Ljava/lang/String;)V

    .line 96
    iget-wide v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 98
    invoke-virtual {v1, v3, v4}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->K(D)V

    .line 101
    iget-wide v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 103
    invoke-virtual {v1, v3, v4}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->L(D)V

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/RouteResultData;->getMidPois()Ljava/util/List;

    .line 109
    move-result-object p0

    .line 110
    if-eqz p0, :cond_4

    .line 112
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 115
    move-result v0

    .line 116
    if-lez v0, :cond_4

    .line 118
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 121
    move-result v0

    .line 122
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->H(I)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    .line 127
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    new-instance v3, Ljava/lang/StringBuffer;

    .line 132
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 138
    move-result-object p0

    .line 139
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_3

    .line 145
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 151
    new-instance v5, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;

    .line 153
    invoke-direct {v5}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;-><init>()V

    .line 156
    iget-object v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 158
    invoke-virtual {v5, v6}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->H(Ljava/lang/String;)V

    .line 161
    iget-object v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 163
    invoke-virtual {v5, v6}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->D(Ljava/lang/String;)V

    .line 166
    iget-wide v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 168
    invoke-virtual {v5, v6, v7}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->F(D)V

    .line 171
    iget-wide v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 173
    invoke-virtual {v5, v6, v7}, Lcom/autonavi/amapauto/protocol/model/item/ProtocolViaPOIInfo;->G(D)V

    .line 176
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v5}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->toJsonObject()Lorg/json/JSONObject;

    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    goto :goto_1

    .line 191
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {v1, p0}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->G(Ljava/lang/String;)V

    .line 198
    :cond_4
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/RequestRouteResultModel;->I(Ljava/util/ArrayList;)V

    .line 201
    goto :goto_2

    .line 202
    :cond_5
    const/4 v1, 0x0

    .line 203
    :goto_2
    return-object v1
.end method
